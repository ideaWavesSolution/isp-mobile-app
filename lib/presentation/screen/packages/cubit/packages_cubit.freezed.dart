// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packages_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PackagesState {

 BaseStatus get status; BaseStatus get changeStatus; List<PackageEntity> get packages;
/// Create a copy of PackagesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackagesStateCopyWith<PackagesState> get copyWith => _$PackagesStateCopyWithImpl<PackagesState>(this as PackagesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackagesState&&(identical(other.status, status) || other.status == status)&&(identical(other.changeStatus, changeStatus) || other.changeStatus == changeStatus)&&const DeepCollectionEquality().equals(other.packages, packages));
}


@override
int get hashCode => Object.hash(runtimeType,status,changeStatus,const DeepCollectionEquality().hash(packages));

@override
String toString() {
  return 'PackagesState(status: $status, changeStatus: $changeStatus, packages: $packages)';
}


}

/// @nodoc
abstract mixin class $PackagesStateCopyWith<$Res>  {
  factory $PackagesStateCopyWith(PackagesState value, $Res Function(PackagesState) _then) = _$PackagesStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, BaseStatus changeStatus, List<PackageEntity> packages
});


$BaseStatusCopyWith<$Res> get status;$BaseStatusCopyWith<$Res> get changeStatus;

}
/// @nodoc
class _$PackagesStateCopyWithImpl<$Res>
    implements $PackagesStateCopyWith<$Res> {
  _$PackagesStateCopyWithImpl(this._self, this._then);

  final PackagesState _self;
  final $Res Function(PackagesState) _then;

/// Create a copy of PackagesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? changeStatus = null,Object? packages = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,changeStatus: null == changeStatus ? _self.changeStatus : changeStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,packages: null == packages ? _self.packages : packages // ignore: cast_nullable_to_non_nullable
as List<PackageEntity>,
  ));
}
/// Create a copy of PackagesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of PackagesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get changeStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.changeStatus, (value) {
    return _then(_self.copyWith(changeStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [PackagesState].
extension PackagesStatePatterns on PackagesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackagesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackagesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackagesState value)  $default,){
final _that = this;
switch (_that) {
case _PackagesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackagesState value)?  $default,){
final _that = this;
switch (_that) {
case _PackagesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus changeStatus,  List<PackageEntity> packages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackagesState() when $default != null:
return $default(_that.status,_that.changeStatus,_that.packages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus changeStatus,  List<PackageEntity> packages)  $default,) {final _that = this;
switch (_that) {
case _PackagesState():
return $default(_that.status,_that.changeStatus,_that.packages);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  BaseStatus changeStatus,  List<PackageEntity> packages)?  $default,) {final _that = this;
switch (_that) {
case _PackagesState() when $default != null:
return $default(_that.status,_that.changeStatus,_that.packages);case _:
  return null;

}
}

}

/// @nodoc


class _PackagesState implements PackagesState {
  const _PackagesState({this.status = const BaseStatus.initial(), this.changeStatus = const BaseStatus.initial(), final  List<PackageEntity> packages = const <PackageEntity>[]}): _packages = packages;
  

@override@JsonKey() final  BaseStatus status;
@override@JsonKey() final  BaseStatus changeStatus;
 final  List<PackageEntity> _packages;
@override@JsonKey() List<PackageEntity> get packages {
  if (_packages is EqualUnmodifiableListView) return _packages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_packages);
}


/// Create a copy of PackagesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackagesStateCopyWith<_PackagesState> get copyWith => __$PackagesStateCopyWithImpl<_PackagesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackagesState&&(identical(other.status, status) || other.status == status)&&(identical(other.changeStatus, changeStatus) || other.changeStatus == changeStatus)&&const DeepCollectionEquality().equals(other._packages, _packages));
}


@override
int get hashCode => Object.hash(runtimeType,status,changeStatus,const DeepCollectionEquality().hash(_packages));

@override
String toString() {
  return 'PackagesState(status: $status, changeStatus: $changeStatus, packages: $packages)';
}


}

/// @nodoc
abstract mixin class _$PackagesStateCopyWith<$Res> implements $PackagesStateCopyWith<$Res> {
  factory _$PackagesStateCopyWith(_PackagesState value, $Res Function(_PackagesState) _then) = __$PackagesStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, BaseStatus changeStatus, List<PackageEntity> packages
});


@override $BaseStatusCopyWith<$Res> get status;@override $BaseStatusCopyWith<$Res> get changeStatus;

}
/// @nodoc
class __$PackagesStateCopyWithImpl<$Res>
    implements _$PackagesStateCopyWith<$Res> {
  __$PackagesStateCopyWithImpl(this._self, this._then);

  final _PackagesState _self;
  final $Res Function(_PackagesState) _then;

/// Create a copy of PackagesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? changeStatus = null,Object? packages = null,}) {
  return _then(_PackagesState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,changeStatus: null == changeStatus ? _self.changeStatus : changeStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,packages: null == packages ? _self._packages : packages // ignore: cast_nullable_to_non_nullable
as List<PackageEntity>,
  ));
}

/// Create a copy of PackagesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of PackagesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get changeStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.changeStatus, (value) {
    return _then(_self.copyWith(changeStatus: value));
  });
}
}

// dart format on
