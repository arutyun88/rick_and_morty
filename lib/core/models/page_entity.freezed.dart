// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PageInfo {

 int get count; int get pages; String? get next; String? get prev;
/// Create a copy of PageInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageInfoCopyWith<PageInfo> get copyWith => _$PageInfoCopyWithImpl<PageInfo>(this as PageInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageInfo&&(identical(other.count, count) || other.count == count)&&(identical(other.pages, pages) || other.pages == pages)&&(identical(other.next, next) || other.next == next)&&(identical(other.prev, prev) || other.prev == prev));
}


@override
int get hashCode => Object.hash(runtimeType,count,pages,next,prev);

@override
String toString() {
  return 'PageInfo(count: $count, pages: $pages, next: $next, prev: $prev)';
}


}

/// @nodoc
abstract mixin class $PageInfoCopyWith<$Res>  {
  factory $PageInfoCopyWith(PageInfo value, $Res Function(PageInfo) _then) = _$PageInfoCopyWithImpl;
@useResult
$Res call({
 int count, int pages, String? next, String? prev
});




}
/// @nodoc
class _$PageInfoCopyWithImpl<$Res>
    implements $PageInfoCopyWith<$Res> {
  _$PageInfoCopyWithImpl(this._self, this._then);

  final PageInfo _self;
  final $Res Function(PageInfo) _then;

/// Create a copy of PageInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? pages = null,Object? next = freezed,Object? prev = freezed,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,prev: freezed == prev ? _self.prev : prev // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PageInfo].
extension PageInfoPatterns on PageInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PageInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PageInfo() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PageInfo value)  $default,){
final _that = this;
switch (_that) {
case _PageInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PageInfo value)?  $default,){
final _that = this;
switch (_that) {
case _PageInfo() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  int pages,  String? next,  String? prev)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PageInfo() when $default != null:
return $default(_that.count,_that.pages,_that.next,_that.prev);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  int pages,  String? next,  String? prev)  $default,) {final _that = this;
switch (_that) {
case _PageInfo():
return $default(_that.count,_that.pages,_that.next,_that.prev);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  int pages,  String? next,  String? prev)?  $default,) {final _that = this;
switch (_that) {
case _PageInfo() when $default != null:
return $default(_that.count,_that.pages,_that.next,_that.prev);case _:
  return null;

}
}

}

/// @nodoc


class _PageInfo implements PageInfo {
  const _PageInfo({required this.count, required this.pages, this.next, this.prev});
  

@override final  int count;
@override final  int pages;
@override final  String? next;
@override final  String? prev;

/// Create a copy of PageInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageInfoCopyWith<_PageInfo> get copyWith => __$PageInfoCopyWithImpl<_PageInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageInfo&&(identical(other.count, count) || other.count == count)&&(identical(other.pages, pages) || other.pages == pages)&&(identical(other.next, next) || other.next == next)&&(identical(other.prev, prev) || other.prev == prev));
}


@override
int get hashCode => Object.hash(runtimeType,count,pages,next,prev);

@override
String toString() {
  return 'PageInfo(count: $count, pages: $pages, next: $next, prev: $prev)';
}


}

/// @nodoc
abstract mixin class _$PageInfoCopyWith<$Res> implements $PageInfoCopyWith<$Res> {
  factory _$PageInfoCopyWith(_PageInfo value, $Res Function(_PageInfo) _then) = __$PageInfoCopyWithImpl;
@override @useResult
$Res call({
 int count, int pages, String? next, String? prev
});




}
/// @nodoc
class __$PageInfoCopyWithImpl<$Res>
    implements _$PageInfoCopyWith<$Res> {
  __$PageInfoCopyWithImpl(this._self, this._then);

  final _PageInfo _self;
  final $Res Function(_PageInfo) _then;

/// Create a copy of PageInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? pages = null,Object? next = freezed,Object? prev = freezed,}) {
  return _then(_PageInfo(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,prev: freezed == prev ? _self.prev : prev // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$PageEntity<T> {

 List<T> get items; PageInfo get info;
/// Create a copy of PageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageEntityCopyWith<T, PageEntity<T>> get copyWith => _$PageEntityCopyWithImpl<T, PageEntity<T>>(this as PageEntity<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageEntity<T>&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),info);

@override
String toString() {
  return 'PageEntity<$T>(items: $items, info: $info)';
}


}

/// @nodoc
abstract mixin class $PageEntityCopyWith<T,$Res>  {
  factory $PageEntityCopyWith(PageEntity<T> value, $Res Function(PageEntity<T>) _then) = _$PageEntityCopyWithImpl;
@useResult
$Res call({
 List<T> items, PageInfo info
});


$PageInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$PageEntityCopyWithImpl<T,$Res>
    implements $PageEntityCopyWith<T, $Res> {
  _$PageEntityCopyWithImpl(this._self, this._then);

  final PageEntity<T> _self;
  final $Res Function(PageEntity<T>) _then;

/// Create a copy of PageEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? info = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<T>,info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as PageInfo,
  ));
}
/// Create a copy of PageEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PageInfoCopyWith<$Res> get info {
  
  return $PageInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}


/// Adds pattern-matching-related methods to [PageEntity].
extension PageEntityPatterns<T> on PageEntity<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PageEntity<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PageEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PageEntity<T> value)  $default,){
final _that = this;
switch (_that) {
case _PageEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PageEntity<T> value)?  $default,){
final _that = this;
switch (_that) {
case _PageEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> items,  PageInfo info)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PageEntity() when $default != null:
return $default(_that.items,_that.info);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> items,  PageInfo info)  $default,) {final _that = this;
switch (_that) {
case _PageEntity():
return $default(_that.items,_that.info);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> items,  PageInfo info)?  $default,) {final _that = this;
switch (_that) {
case _PageEntity() when $default != null:
return $default(_that.items,_that.info);case _:
  return null;

}
}

}

/// @nodoc


class _PageEntity<T> implements PageEntity<T> {
  const _PageEntity({required final  List<T> items, required this.info}): _items = items;
  

 final  List<T> _items;
@override List<T> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  PageInfo info;

/// Create a copy of PageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageEntityCopyWith<T, _PageEntity<T>> get copyWith => __$PageEntityCopyWithImpl<T, _PageEntity<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageEntity<T>&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),info);

@override
String toString() {
  return 'PageEntity<$T>(items: $items, info: $info)';
}


}

/// @nodoc
abstract mixin class _$PageEntityCopyWith<T,$Res> implements $PageEntityCopyWith<T, $Res> {
  factory _$PageEntityCopyWith(_PageEntity<T> value, $Res Function(_PageEntity<T>) _then) = __$PageEntityCopyWithImpl;
@override @useResult
$Res call({
 List<T> items, PageInfo info
});


@override $PageInfoCopyWith<$Res> get info;

}
/// @nodoc
class __$PageEntityCopyWithImpl<T,$Res>
    implements _$PageEntityCopyWith<T, $Res> {
  __$PageEntityCopyWithImpl(this._self, this._then);

  final _PageEntity<T> _self;
  final $Res Function(_PageEntity<T>) _then;

/// Create a copy of PageEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? info = null,}) {
  return _then(_PageEntity<T>(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<T>,info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as PageInfo,
  ));
}

/// Create a copy of PageEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PageInfoCopyWith<$Res> get info {
  
  return $PageInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

// dart format on
