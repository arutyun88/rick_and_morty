import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/features/favorites/presentation/favorites_page.dart';

class FavoritesFlow extends ConsumerWidget {
  const FavoritesFlow({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const FavoritesPage();
  }
}
