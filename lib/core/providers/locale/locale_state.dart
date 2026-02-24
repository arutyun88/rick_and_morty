part of 'locale_provider.dart';

@freezed
sealed class LocaleState with _$LocaleState {
  const factory LocaleState.system(AppLocale locale) = LocaleStateSystem;

  const factory LocaleState.user(AppLocale locale) = LocaleStateUser;
}
