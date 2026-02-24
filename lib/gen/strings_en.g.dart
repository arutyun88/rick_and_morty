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
}

// Path: settings
class _TranslationsSettingsEn implements TranslationsSettingsRu {
	_TranslationsSettingsEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
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

// Path: settings.language
class _TranslationsSettingsLanguageEn implements TranslationsSettingsLanguageRu {
	_TranslationsSettingsLanguageEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'English';
	@override String get code => 'en';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'settings.language.name' => 'English',
			'settings.language.code' => 'en',
			'settings.system' => 'System',
			'tabs.characters' => 'Characters',
			'tabs.favorites' => 'Favorites',
			'tabs.settings' => 'Settings',
			_ => null,
		};
	}
}
