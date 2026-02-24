import 'package:flutter/material.dart';

const _expansionDuration = Duration(milliseconds: 400);

class ExpandableCard extends StatefulWidget {
  const ExpandableCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.isExpanded,
    required this.onExpansionChanged,
    required this.children,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final bool isExpanded;
  final ValueChanged<bool> onExpansionChanged;
  final List<Widget> children;

  @override
  State<ExpandableCard> createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  bool _hasAnimated = false;

  @override
  void didUpdateWidget(covariant ExpandableCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isExpanded != widget.isExpanded) {
      _hasAnimated = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.surfaceContainerHighest.withValues(
        alpha: 0.6,
      ),
      borderRadius: BorderRadius.circular(20),
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () => widget.onExpansionChanged(!widget.isExpanded),
            splashColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
            highlightColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  AnimatedContainer(
                    duration: _expansionDuration,
                    curve: Curves.easeInOutCubic,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Theme.of(
                        context,
                      ).colorScheme.primaryContainer.withValues(alpha: widget.isExpanded ? 0.8 : 0.4),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      widget.icon,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AnimatedDefaultTextStyle(
                          duration: _expansionDuration,
                          curve: Curves.easeInOutCubic,
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: widget.isExpanded ? FontWeight.w600 : FontWeight.w500,
                          ),
                          child: Text(widget.title),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.subtitle,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                  AnimatedRotation(
                    turns: widget.isExpanded ? 0.5 : 0,
                    duration: _expansionDuration,
                    curve: Curves.easeInOutCubic,
                    child: const Icon(Icons.expand_more),
                  ),
                ],
              ),
            ),
          ),
          TweenAnimationBuilder<double>(
            tween: Tween(
              begin: widget.isExpanded ? 0 : 1,
              end: widget.isExpanded ? 1 : 0,
            ),
            duration: _hasAnimated ? _expansionDuration : Duration.zero,
            curve: Curves.easeInOutCubic,
            builder: (context, value, child) {
              return ClipRect(
                child: Align(
                  alignment: Alignment.topCenter,
                  heightFactor: value,
                  child: child,
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: widget.children
                    .map(
                      (c) => Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: c,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
