import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsFlow extends ConsumerWidget {
  const SettingsFlow({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.green,
      child: SafeArea(
        child: Center(
          child: Text('Settings'),
        ),
      ),
    );
  }
}
