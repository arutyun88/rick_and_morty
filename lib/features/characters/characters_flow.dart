import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CharactersFlow extends ConsumerWidget {
  const CharactersFlow({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.red,
      child: SafeArea(
        child: Center(
          child: Text('Characters'),
        ),
      ),
    );
  }
}
