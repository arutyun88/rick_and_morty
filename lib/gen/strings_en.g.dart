///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsEn with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEn _root = this; // ignore: unused_field

	@override 
	TranslationsEn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsSettingsEn settings = _TranslationsSettingsEn._(_root);
	@override late final _TranslationsTabsEn tabs = _TranslationsTabsEn._(_root);
	@override late final _TranslationsCharactersEn characters = _TranslationsCharactersEn._(_root);
	@override late final _TranslationsFavoritesEn favorites = _TranslationsFavoritesEn._(_root);
}

// Path: settings
class _TranslationsSettingsEn implements TranslationsSettingsRu {
	_TranslationsSettingsEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Settings';
	@override late final _TranslationsSettingsThemeEn theme = _TranslationsSettingsThemeEn._(_root);
	@override late final _TranslationsSettingsLanguageEn language = _TranslationsSettingsLanguageEn._(_root);
	@override String get system => 'System';
}

// Path: tabs
class _TranslationsTabsEn implements TranslationsTabsRu {
	_TranslationsTabsEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get characters => 'Characters';
	@override String get favorites => 'Favorites';
	@override String get settings => 'Settings';
}

// Path: characters
class _TranslationsCharactersEn implements TranslationsCharactersRu {
	_TranslationsCharactersEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Characters';
	@override String get offline_message => 'No internet connection.\nCheck your connection and try again.';
	@override String get retry => 'Retry';
	@override late final _TranslationsCharactersDetailEn detail = _TranslationsCharactersDetailEn._(_root);
}

// Path: favorites
class _TranslationsFavoritesEn implements TranslationsFavoritesRu {
	_TranslationsFavoritesEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorites';
	@override String get sort => 'Sort';
	@override String get sortByName => 'By name';
	@override String get sortByStatus => 'By status';
	@override String get sortBySpecies => 'By species';
	@override String get empty => 'No favorite characters';
	@override String get emptyHint => 'Add characters by tapping the star';
}

// Path: settings.theme
class _TranslationsSettingsThemeEn implements TranslationsSettingsThemeRu {
	_TranslationsSettingsThemeEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Theme';
	@override String get system => 'System';
	@override String get light => 'Light';
	@override String get dark => 'Dark';
}

// Path: settings.language
class _TranslationsSettingsLanguageEn implements TranslationsSettingsLanguageRu {
	_TranslationsSettingsLanguageEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Language';
	@override String get name => 'English';
	@override String get code => 'en';
}

// Path: characters.detail
class _TranslationsCharactersDetailEn implements TranslationsCharactersDetailRu {
	_TranslationsCharactersDetailEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get status => 'Status';
	@override String get species => 'Species';
	@override String get type => 'Type';
	@override String get gender => 'Gender';
	@override String get origin => 'Origin';
	@override String get location => 'Location';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'settings.title' => 'Settings',
			'settings.theme.title' => 'Theme',
			'settings.theme.system' => 'System',
			'settings.theme.light' => 'Light',
			'settings.theme.dark' => 'Dark',
			'settings.language.title' => 'Language',
			'settings.language.name' => 'English',
			'settings.language.code' => 'en',
			'settings.system' => 'System',
			'tabs.characters' => 'Characters',
			'tabs.favorites' => 'Favorites',
			'tabs.settings' => 'Settings',
			'characters.title' => 'Characters',
			'characters.offline_message' => 'No internet connection.\nCheck your connection and try again.',
			'characters.retry' => 'Retry',
			'characters.detail.status' => 'Status',
			'characters.detail.species' => 'Species',
			'characters.detail.type' => 'Type',
			'characters.detail.gender' => 'Gender',
			'characters.detail.origin' => 'Origin',
			'characters.detail.location' => 'Location',
			'favorites.title' => 'Favorites',
			'favorites.sort' => 'Sort',
			'favorites.sortByName' => 'By name',
			'favorites.sortByStatus' => 'By status',
			'favorites.sortBySpecies' => 'By species',
			'favorites.empty' => 'No favorite characters',
			'favorites.emptyHint' => 'Add characters by tapping the star',
			_ => null,
		};
	}
}
