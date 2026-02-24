import 'dart:ui';

import 'package:flutter/material.dart';

class BlurredIsland extends StatelessWidget {
  const BlurredIsland({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final blurSigma = 10.0;
    final borderRadius = BorderRadius.circular(24);

    final color = Color.lerp(
      Theme.of(context).colorScheme.surface.withValues(alpha: 0.5),
      Theme.of(context).colorScheme.primary.withValues(alpha: 0.08),
      0.15,
    )!;

    Widget content = BackdropFilter(
      filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        child: child,
      ),
    );

    content = ClipRRect(borderRadius: borderRadius, child: content);

    return content;
  }
}
