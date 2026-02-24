import 'package:flutter/material.dart';

class AnimatedStaggerSection extends StatelessWidget {
  const AnimatedStaggerSection({
    super.key,
    required this.index,
    required this.animation,
    required this.child,
  });

  final int index;
  final Animation<double> animation;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final delay = index * 0.15;
        final progress = Curves.easeOutCubic.transform(
          ((animation.value - delay) / (1 - delay)).clamp(0.0, 1.0),
        );
        return Transform.translate(
          offset: Offset(0, 20 * (1 - progress)),
          child: Opacity(
            opacity: progress,
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}
