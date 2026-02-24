// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locale_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocaleState {

 AppLocale get locale;
/// Create a copy of LocaleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocaleStateCopyWith<LocaleState> get copyWith => _$LocaleStateCopyWithImpl<LocaleState>(this as LocaleState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocaleState&&(identical(other.locale, locale) || other.locale == locale));
}


@override
int get hashCode => Object.hash(runtimeType,locale);

@override
String toString() {
  return 'LocaleState(locale: $locale)';
}


}

/// @nodoc
abstract mixin class $LocaleStateCopyWith<$Res>  {
  factory $LocaleStateCopyWith(LocaleState value, $Res Function(LocaleState) _then) = _$LocaleStateCopyWithImpl;
@useResult
$Res call({
 AppLocale locale
});




}
/// @nodoc
class _$LocaleStateCopyWithImpl<$Res>
    implements $LocaleStateCopyWith<$Res> {
  _$LocaleStateCopyWithImpl(this._self, this._then);

  final LocaleState _self;
  final $Res Function(LocaleState) _then;

/// Create a copy of LocaleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? locale = null,}) {
  return _then(_self.copyWith(
locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as AppLocale,
  ));
}

}


/// Adds pattern-matching-related methods to [LocaleState].
extension LocaleStatePatterns on LocaleState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LocaleStateSystem value)?  system,TResult Function( LocaleStateUser value)?  user,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LocaleStateSystem() when system != null:
return system(_that);case LocaleStateUser() when user != null:
return user(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LocaleStateSystem value)  system,required TResult Function( LocaleStateUser value)  user,}){
final _that = this;
switch (_that) {
case LocaleStateSystem():
return system(_that);case LocaleStateUser():
return user(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LocaleStateSystem value)?  system,TResult? Function( LocaleStateUser value)?  user,}){
final _that = this;
switch (_that) {
case LocaleStateSystem() when system != null:
return system(_that);case LocaleStateUser() when user != null:
return user(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AppLocale locale)?  system,TResult Function( AppLocale locale)?  user,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LocaleStateSystem() when system != null:
return system(_that.locale);case LocaleStateUser() when user != null:
return user(_that.locale);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AppLocale locale)  system,required TResult Function( AppLocale locale)  user,}) {final _that = this;
switch (_that) {
case LocaleStateSystem():
return system(_that.locale);case LocaleStateUser():
return user(_that.locale);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AppLocale locale)?  system,TResult? Function( AppLocale locale)?  user,}) {final _that = this;
switch (_that) {
case LocaleStateSystem() when system != null:
return system(_that.locale);case LocaleStateUser() when user != null:
return user(_that.locale);case _:
  return null;

}
}

}

/// @nodoc


class LocaleStateSystem implements LocaleState {
  const LocaleStateSystem(this.locale);
  

@override final  AppLocale locale;

/// Create a copy of LocaleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocaleStateSystemCopyWith<LocaleStateSystem> get copyWith => _$LocaleStateSystemCopyWithImpl<LocaleStateSystem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocaleStateSystem&&(identical(other.locale, locale) || other.locale == locale));
}


@override
int get hashCode => Object.hash(runtimeType,locale);

@override
String toString() {
  return 'LocaleState.system(locale: $locale)';
}


}

/// @nodoc
abstract mixin class $LocaleStateSystemCopyWith<$Res> implements $LocaleStateCopyWith<$Res> {
  factory $LocaleStateSystemCopyWith(LocaleStateSystem value, $Res Function(LocaleStateSystem) _then) = _$LocaleStateSystemCopyWithImpl;
@override @useResult
$Res call({
 AppLocale locale
});




}
/// @nodoc
class _$LocaleStateSystemCopyWithImpl<$Res>
    implements $LocaleStateSystemCopyWith<$Res> {
  _$LocaleStateSystemCopyWithImpl(this._self, this._then);

  final LocaleStateSystem _self;
  final $Res Function(LocaleStateSystem) _then;

/// Create a copy of LocaleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locale = null,}) {
  return _then(LocaleStateSystem(
null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as AppLocale,
  ));
}


}

/// @nodoc


class LocaleStateUser implements LocaleState {
  const LocaleStateUser(this.locale);
  

@override final  AppLocale locale;

/// Create a copy of LocaleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocaleStateUserCopyWith<LocaleStateUser> get copyWith => _$LocaleStateUserCopyWithImpl<LocaleStateUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocaleStateUser&&(identical(other.locale, locale) || other.locale == locale));
}


@override
int get hashCode => Object.hash(runtimeType,locale);

@override
String toString() {
  return 'LocaleState.user(locale: $locale)';
}


}

/// @nodoc
abstract mixin class $LocaleStateUserCopyWith<$Res> implements $LocaleStateCopyWith<$Res> {
  factory $LocaleStateUserCopyWith(LocaleStateUser value, $Res Function(LocaleStateUser) _then) = _$LocaleStateUserCopyWithImpl;
@override @useResult
$Res call({
 AppLocale locale
});




}
/// @nodoc
class _$LocaleStateUserCopyWithImpl<$Res>
    implements $LocaleStateUserCopyWith<$Res> {
  _$LocaleStateUserCopyWithImpl(this._self, this._then);

  final LocaleStateUser _self;
  final $Res Function(LocaleStateUser) _then;

/// Create a copy of LocaleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locale = null,}) {
  return _then(LocaleStateUser(
null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as AppLocale,
  ));
}


}

// dart format on
