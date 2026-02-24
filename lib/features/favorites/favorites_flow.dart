import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritesFlow extends ConsumerWidget {
  const FavoritesFlow({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.blue,
      child: SafeArea(
        child: Center(
          child: Text('Favorites'),
        ),
      ),
    );
  }
}
