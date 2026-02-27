///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsRu = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsSettingsRu settings = TranslationsSettingsRu._(_root);
	late final TranslationsTabsRu tabs = TranslationsTabsRu._(_root);
	late final TranslationsCharactersRu characters = TranslationsCharactersRu._(_root);
	late final TranslationsFavoritesRu favorites = TranslationsFavoritesRu._(_root);
}

// Path: settings
class TranslationsSettingsRu {
	TranslationsSettingsRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ru: 'Настройки'
	String get title => 'Настройки';

	late final TranslationsSettingsThemeRu theme = TranslationsSettingsThemeRu._(_root);
	late final TranslationsSettingsLanguageRu language = TranslationsSettingsLanguageRu._(_root);

	/// ru: 'Системный'
	String get system => 'Системный';
}

// Path: tabs
class TranslationsTabsRu {
	TranslationsTabsRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ru: 'Персонажи'
	String get characters => 'Персонажи';

	/// ru: 'Избранное'
	String get favorites => 'Избранное';

	/// ru: 'Настройки'
	String get settings => 'Настройки';
}

// Path: characters
class TranslationsCharactersRu {
	TranslationsCharactersRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ru: 'Персонажи'
	String get title => 'Персонажи';

	/// ru: 'Нет подключения к интернету. Проверьте соединение и попробуйте снова.'
	String get offline_message => 'Нет подключения к интернету.\nПроверьте соединение и попробуйте снова.';

	/// ru: 'Повторить'
	String get retry => 'Повторить';

	late final TranslationsCharactersDetailRu detail = TranslationsCharactersDetailRu._(_root);
}

// Path: favorites
class TranslationsFavoritesRu {
	TranslationsFavoritesRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ru: 'Избранное'
	String get title => 'Избранное';

	/// ru: 'Сортировка'
	String get sort => 'Сортировка';

	/// ru: 'По имени'
	String get sortByName => 'По имени';

	/// ru: 'По статусу'
	String get sortByStatus => 'По статусу';

	/// ru: 'По виду'
	String get sortBySpecies => 'По виду';

	/// ru: 'Нет избранных персонажей'
	String get empty => 'Нет избранных персонажей';

	/// ru: 'Добавьте персонажей, нажав на звёздочку'
	String get emptyHint => 'Добавьте персонажей, нажав на звёздочку';
}

// Path: settings.theme
class TranslationsSettingsThemeRu {
	TranslationsSettingsThemeRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ru: 'Тема'
	String get title => 'Тема';

	/// ru: 'Системная'
	String get system => 'Системная';

	/// ru: 'Светлая'
	String get light => 'Светлая';

	/// ru: 'Тёмная'
	String get dark => 'Тёмная';
}

// Path: settings.language
class TranslationsSettingsLanguageRu {
	TranslationsSettingsLanguageRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ru: 'Язык'
	String get title => 'Язык';

	/// ru: 'Русский'
	String get name => 'Русский';

	/// ru: 'ru'
	String get code => 'ru';
}

// Path: characters.detail
class TranslationsCharactersDetailRu {
	TranslationsCharactersDetailRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ru: 'Статус'
	String get status => 'Статус';

	/// ru: 'Вид'
	String get species => 'Вид';

	/// ru: 'Тип'
	String get type => 'Тип';

	/// ru: 'Пол'
	String get gender => 'Пол';

	/// ru: 'Происхождение'
	String get origin => 'Происхождение';

	/// ru: 'Локация'
	String get location => 'Локация';
}

/// The flat map containing all translations for locale <ru>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'settings.title' => 'Настройки',
			'settings.theme.title' => 'Тема',
			'settings.theme.system' => 'Системная',
			'settings.theme.light' => 'Светлая',
			'settings.theme.dark' => 'Тёмная',
			'settings.language.title' => 'Язык',
			'settings.language.name' => 'Русский',
			'settings.language.code' => 'ru',
			'settings.system' => 'Системный',
			'tabs.characters' => 'Персонажи',
			'tabs.favorites' => 'Избранное',
			'tabs.settings' => 'Настройки',
			'characters.title' => 'Персонажи',
			'characters.offline_message' => 'Нет подключения к интернету.\nПроверьте соединение и попробуйте снова.',
			'characters.retry' => 'Повторить',
			'characters.detail.status' => 'Статус',
			'characters.detail.species' => 'Вид',
			'characters.detail.type' => 'Тип',
			'characters.detail.gender' => 'Пол',
			'characters.detail.origin' => 'Происхождение',
			'characters.detail.location' => 'Локация',
			'favorites.title' => 'Избранное',
			'favorites.sort' => 'Сортировка',
			'favorites.sortByName' => 'По имени',
			'favorites.sortByStatus' => 'По статусу',
			'favorites.sortBySpecies' => 'По виду',
			'favorites.empty' => 'Нет избранных персонажей',
			'favorites.emptyHint' => 'Добавьте персонажей, нажав на звёздочку',
			_ => null,
		};
	}
}
