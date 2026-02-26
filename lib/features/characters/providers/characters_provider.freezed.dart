// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharactersState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharactersState()';
}


}

/// @nodoc
class $CharactersStateCopyWith<$Res>  {
$CharactersStateCopyWith(CharactersState _, $Res Function(CharactersState) __);
}


/// Adds pattern-matching-related methods to [CharactersState].
extension CharactersStatePatterns on CharactersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CharactersLoading value)?  loading,TResult Function( CharactersData value)?  data,TResult Function( CharactersError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CharactersLoading() when loading != null:
return loading(_that);case CharactersData() when data != null:
return data(_that);case CharactersError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CharactersLoading value)  loading,required TResult Function( CharactersData value)  data,required TResult Function( CharactersError value)  error,}){
final _that = this;
switch (_that) {
case CharactersLoading():
return loading(_that);case CharactersData():
return data(_that);case CharactersError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CharactersLoading value)?  loading,TResult? Function( CharactersData value)?  data,TResult? Function( CharactersError value)?  error,}){
final _that = this;
switch (_that) {
case CharactersLoading() when loading != null:
return loading(_that);case CharactersData() when data != null:
return data(_that);case CharactersError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<CharacterEntity> characters,  int page,  bool hasMore,  bool isLoadingMore)?  data,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CharactersLoading() when loading != null:
return loading();case CharactersData() when data != null:
return data(_that.characters,_that.page,_that.hasMore,_that.isLoadingMore);case CharactersError() when error != null:
return error();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<CharacterEntity> characters,  int page,  bool hasMore,  bool isLoadingMore)  data,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case CharactersLoading():
return loading();case CharactersData():
return data(_that.characters,_that.page,_that.hasMore,_that.isLoadingMore);case CharactersError():
return error();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<CharacterEntity> characters,  int page,  bool hasMore,  bool isLoadingMore)?  data,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case CharactersLoading() when loading != null:
return loading();case CharactersData() when data != null:
return data(_that.characters,_that.page,_that.hasMore,_that.isLoadingMore);case CharactersError() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class CharactersLoading extends CharactersState {
  const CharactersLoading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharactersState.loading()';
}


}




/// @nodoc


class CharactersData extends CharactersState {
  const CharactersData({required final  List<CharacterEntity> characters, required this.page, required this.hasMore, this.isLoadingMore = false}): _characters = characters,super._();
  

 final  List<CharacterEntity> _characters;
 List<CharacterEntity> get characters {
  if (_characters is EqualUnmodifiableListView) return _characters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_characters);
}

 final  int page;
 final  bool hasMore;
@JsonKey() final  bool isLoadingMore;

/// Create a copy of CharactersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharactersDataCopyWith<CharactersData> get copyWith => _$CharactersDataCopyWithImpl<CharactersData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersData&&const DeepCollectionEquality().equals(other._characters, _characters)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_characters),page,hasMore,isLoadingMore);

@override
String toString() {
  return 'CharactersState.data(characters: $characters, page: $page, hasMore: $hasMore, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $CharactersDataCopyWith<$Res> implements $CharactersStateCopyWith<$Res> {
  factory $CharactersDataCopyWith(CharactersData value, $Res Function(CharactersData) _then) = _$CharactersDataCopyWithImpl;
@useResult
$Res call({
 List<CharacterEntity> characters, int page, bool hasMore, bool isLoadingMore
});




}
/// @nodoc
class _$CharactersDataCopyWithImpl<$Res>
    implements $CharactersDataCopyWith<$Res> {
  _$CharactersDataCopyWithImpl(this._self, this._then);

  final CharactersData _self;
  final $Res Function(CharactersData) _then;

/// Create a copy of CharactersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? characters = null,Object? page = null,Object? hasMore = null,Object? isLoadingMore = null,}) {
  return _then(CharactersData(
characters: null == characters ? _self._characters : characters // ignore: cast_nullable_to_non_nullable
as List<CharacterEntity>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class CharactersError extends CharactersState {
  const CharactersError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharactersState.error()';
}


}




// dart format on
