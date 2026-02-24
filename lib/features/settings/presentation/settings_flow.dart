import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/core/widgets/blurred_app_bar.dart';
import 'package:rick_and_morty/features/settings/presentation/widgets/animated_stagger_section.dart';
import 'package:rick_and_morty/features/settings/presentation/widgets/language_settings_section.dart';
import 'package:rick_and_morty/features/settings/presentation/widgets/theme_settings_section.dart';
import 'package:rick_and_morty/gen/strings.g.dart';

class SettingsFlow extends ConsumerStatefulWidget {
  const SettingsFlow({super.key});

  @override
  ConsumerState<SettingsFlow> createState() => _SettingsFlowState();
}

class _SettingsFlowState extends ConsumerState<SettingsFlow> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  int _expandedIndex = -1;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: BlurredAppBar(
        title: Text(t.settings.title),
      ),
      body: GestureDetector(
        onTap: () => setState(() {
          if (_expandedIndex != -1) {
            setState(() => _expandedIndex = -1);
          }
        }),
        behavior: HitTestBehavior.opaque,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: MediaQuery.of(context).padding.top + kToolbarHeight + 16),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    AnimatedStaggerSection(
                      index: 0,
                      animation: _controller,
                      child: LanguageSettingsSection(
                        isExpanded: _expandedIndex == 0,
                        onExpansionChanged: (isExpanded) => setState(() => _expandedIndex = isExpanded ? 0 : -1),
                      ),
                    ),
                    const SizedBox(height: 12),
                    AnimatedStaggerSection(
                      index: 1,
                      animation: _controller,
                      child: ThemeSettingsSection(
                        isExpanded: _expandedIndex == 1,
                        onExpansionChanged: (isExpanded) => setState(() => _expandedIndex = isExpanded ? 1 : -1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
