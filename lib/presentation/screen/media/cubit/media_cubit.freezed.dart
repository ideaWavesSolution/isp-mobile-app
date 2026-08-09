// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MediaState {

 BaseStatus get status; List<MediaCategoryEntity> get categories;
/// Create a copy of MediaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaStateCopyWith<MediaState> get copyWith => _$MediaStateCopyWithImpl<MediaState>(this as MediaState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.categories, categories));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'MediaState(status: $status, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $MediaStateCopyWith<$Res>  {
  factory $MediaStateCopyWith(MediaState value, $Res Function(MediaState) _then) = _$MediaStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, List<MediaCategoryEntity> categories
});


$BaseStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$MediaStateCopyWithImpl<$Res>
    implements $MediaStateCopyWith<$Res> {
  _$MediaStateCopyWithImpl(this._self, this._then);

  final MediaState _self;
  final $Res Function(MediaState) _then;

/// Create a copy of MediaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? categories = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<MediaCategoryEntity>,
  ));
}
/// Create a copy of MediaState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [MediaState].
extension MediaStatePatterns on MediaState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaState value)  $default,){
final _that = this;
switch (_that) {
case _MediaState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaState value)?  $default,){
final _that = this;
switch (_that) {
case _MediaState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  List<MediaCategoryEntity> categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaState() when $default != null:
return $default(_that.status,_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  List<MediaCategoryEntity> categories)  $default,) {final _that = this;
switch (_that) {
case _MediaState():
return $default(_that.status,_that.categories);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  List<MediaCategoryEntity> categories)?  $default,) {final _that = this;
switch (_that) {
case _MediaState() when $default != null:
return $default(_that.status,_that.categories);case _:
  return null;

}
}

}

/// @nodoc


class _MediaState implements MediaState {
  const _MediaState({this.status = const BaseStatus.initial(), final  List<MediaCategoryEntity> categories = const <MediaCategoryEntity>[]}): _categories = categories;
  

@override@JsonKey() final  BaseStatus status;
 final  List<MediaCategoryEntity> _categories;
@override@JsonKey() List<MediaCategoryEntity> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of MediaState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaStateCopyWith<_MediaState> get copyWith => __$MediaStateCopyWithImpl<_MediaState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'MediaState(status: $status, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$MediaStateCopyWith<$Res> implements $MediaStateCopyWith<$Res> {
  factory _$MediaStateCopyWith(_MediaState value, $Res Function(_MediaState) _then) = __$MediaStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, List<MediaCategoryEntity> categories
});


@override $BaseStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$MediaStateCopyWithImpl<$Res>
    implements _$MediaStateCopyWith<$Res> {
  __$MediaStateCopyWithImpl(this._self, this._then);

  final _MediaState _self;
  final $Res Function(_MediaState) _then;

/// Create a copy of MediaState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? categories = null,}) {
  return _then(_MediaState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<MediaCategoryEntity>,
  ));
}

/// Create a copy of MediaState
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
