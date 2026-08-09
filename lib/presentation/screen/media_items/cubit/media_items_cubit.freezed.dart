// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_items_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MediaItemsState {

 BaseStatus get status; List<MediaItemEntity> get items;
/// Create a copy of MediaItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaItemsStateCopyWith<MediaItemsState> get copyWith => _$MediaItemsStateCopyWithImpl<MediaItemsState>(this as MediaItemsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaItemsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'MediaItemsState(status: $status, items: $items)';
}


}

/// @nodoc
abstract mixin class $MediaItemsStateCopyWith<$Res>  {
  factory $MediaItemsStateCopyWith(MediaItemsState value, $Res Function(MediaItemsState) _then) = _$MediaItemsStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, List<MediaItemEntity> items
});


$BaseStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$MediaItemsStateCopyWithImpl<$Res>
    implements $MediaItemsStateCopyWith<$Res> {
  _$MediaItemsStateCopyWithImpl(this._self, this._then);

  final MediaItemsState _self;
  final $Res Function(MediaItemsState) _then;

/// Create a copy of MediaItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MediaItemEntity>,
  ));
}
/// Create a copy of MediaItemsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [MediaItemsState].
extension MediaItemsStatePatterns on MediaItemsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaItemsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaItemsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaItemsState value)  $default,){
final _that = this;
switch (_that) {
case _MediaItemsState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaItemsState value)?  $default,){
final _that = this;
switch (_that) {
case _MediaItemsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  List<MediaItemEntity> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaItemsState() when $default != null:
return $default(_that.status,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  List<MediaItemEntity> items)  $default,) {final _that = this;
switch (_that) {
case _MediaItemsState():
return $default(_that.status,_that.items);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  List<MediaItemEntity> items)?  $default,) {final _that = this;
switch (_that) {
case _MediaItemsState() when $default != null:
return $default(_that.status,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _MediaItemsState implements MediaItemsState {
  const _MediaItemsState({this.status = const BaseStatus.initial(), final  List<MediaItemEntity> items = const <MediaItemEntity>[]}): _items = items;
  

@override@JsonKey() final  BaseStatus status;
 final  List<MediaItemEntity> _items;
@override@JsonKey() List<MediaItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of MediaItemsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaItemsStateCopyWith<_MediaItemsState> get copyWith => __$MediaItemsStateCopyWithImpl<_MediaItemsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaItemsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'MediaItemsState(status: $status, items: $items)';
}


}

/// @nodoc
abstract mixin class _$MediaItemsStateCopyWith<$Res> implements $MediaItemsStateCopyWith<$Res> {
  factory _$MediaItemsStateCopyWith(_MediaItemsState value, $Res Function(_MediaItemsState) _then) = __$MediaItemsStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, List<MediaItemEntity> items
});


@override $BaseStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$MediaItemsStateCopyWithImpl<$Res>
    implements _$MediaItemsStateCopyWith<$Res> {
  __$MediaItemsStateCopyWithImpl(this._self, this._then);

  final _MediaItemsState _self;
  final $Res Function(_MediaItemsState) _then;

/// Create a copy of MediaItemsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,}) {
  return _then(_MediaItemsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MediaItemEntity>,
  ));
}

/// Create a copy of MediaItemsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
