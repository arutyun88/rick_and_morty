import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/widgets/blurred_app_bar_background.dart';

class BlurredAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BlurredAppBar({
    super.key,
    required this.title,
  });

  final Widget title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      flexibleSpace: const BlurredAppBarBackground(),
      title: title,
    );
  }
}
