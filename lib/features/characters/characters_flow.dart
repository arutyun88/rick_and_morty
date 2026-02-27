import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/features/characters/presentation/characters_page.dart';

class CharactersFlow extends ConsumerWidget {
  const CharactersFlow({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const CharactersPage();
  }
}
