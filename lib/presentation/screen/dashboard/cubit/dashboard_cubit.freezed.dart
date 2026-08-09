// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashboardState {

 BaseStatus get status; BaseStatus get logoutStatus; CustomerEntity? get customer; List<ConnectionEntity> get connections; String? get selectedConnectionId; List<BandwidthPointEntity> get bandwidth;
/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardStateCopyWith<DashboardState> get copyWith => _$DashboardStateCopyWithImpl<DashboardState>(this as DashboardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardState&&(identical(other.status, status) || other.status == status)&&(identical(other.logoutStatus, logoutStatus) || other.logoutStatus == logoutStatus)&&(identical(other.customer, customer) || other.customer == customer)&&const DeepCollectionEquality().equals(other.connections, connections)&&(identical(other.selectedConnectionId, selectedConnectionId) || other.selectedConnectionId == selectedConnectionId)&&const DeepCollectionEquality().equals(other.bandwidth, bandwidth));
}


@override
int get hashCode => Object.hash(runtimeType,status,logoutStatus,customer,const DeepCollectionEquality().hash(connections),selectedConnectionId,const DeepCollectionEquality().hash(bandwidth));

@override
String toString() {
  return 'DashboardState(status: $status, logoutStatus: $logoutStatus, customer: $customer, connections: $connections, selectedConnectionId: $selectedConnectionId, bandwidth: $bandwidth)';
}


}

/// @nodoc
abstract mixin class $DashboardStateCopyWith<$Res>  {
  factory $DashboardStateCopyWith(DashboardState value, $Res Function(DashboardState) _then) = _$DashboardStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, BaseStatus logoutStatus, CustomerEntity? customer, List<ConnectionEntity> connections, String? selectedConnectionId, List<BandwidthPointEntity> bandwidth
});


$BaseStatusCopyWith<$Res> get status;$BaseStatusCopyWith<$Res> get logoutStatus;$CustomerEntityCopyWith<$Res>? get customer;

}
/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._self, this._then);

  final DashboardState _self;
  final $Res Function(DashboardState) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? logoutStatus = null,Object? customer = freezed,Object? connections = null,Object? selectedConnectionId = freezed,Object? bandwidth = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,logoutStatus: null == logoutStatus ? _self.logoutStatus : logoutStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,customer: freezed == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as CustomerEntity?,connections: null == connections ? _self.connections : connections // ignore: cast_nullable_to_non_nullable
as List<ConnectionEntity>,selectedConnectionId: freezed == selectedConnectionId ? _self.selectedConnectionId : selectedConnectionId // ignore: cast_nullable_to_non_nullable
as String?,bandwidth: null == bandwidth ? _self.bandwidth : bandwidth // ignore: cast_nullable_to_non_nullable
as List<BandwidthPointEntity>,
  ));
}
/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get logoutStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.logoutStatus, (value) {
    return _then(_self.copyWith(logoutStatus: value));
  });
}/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerEntityCopyWith<$Res>? get customer {
    if (_self.customer == null) {
    return null;
  }

  return $CustomerEntityCopyWith<$Res>(_self.customer!, (value) {
    return _then(_self.copyWith(customer: value));
  });
}
}


/// Adds pattern-matching-related methods to [DashboardState].
extension DashboardStatePatterns on DashboardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardState value)  $default,){
final _that = this;
switch (_that) {
case _DashboardState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardState value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus logoutStatus,  CustomerEntity? customer,  List<ConnectionEntity> connections,  String? selectedConnectionId,  List<BandwidthPointEntity> bandwidth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardState() when $default != null:
return $default(_that.status,_that.logoutStatus,_that.customer,_that.connections,_that.selectedConnectionId,_that.bandwidth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus logoutStatus,  CustomerEntity? customer,  List<ConnectionEntity> connections,  String? selectedConnectionId,  List<BandwidthPointEntity> bandwidth)  $default,) {final _that = this;
switch (_that) {
case _DashboardState():
return $default(_that.status,_that.logoutStatus,_that.customer,_that.connections,_that.selectedConnectionId,_that.bandwidth);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  BaseStatus logoutStatus,  CustomerEntity? customer,  List<ConnectionEntity> connections,  String? selectedConnectionId,  List<BandwidthPointEntity> bandwidth)?  $default,) {final _that = this;
switch (_that) {
case _DashboardState() when $default != null:
return $default(_that.status,_that.logoutStatus,_that.customer,_that.connections,_that.selectedConnectionId,_that.bandwidth);case _:
  return null;

}
}

}

/// @nodoc


class _DashboardState extends DashboardState {
  const _DashboardState({this.status = const BaseStatus.initial(), this.logoutStatus = const BaseStatus.initial(), this.customer, final  List<ConnectionEntity> connections = const <ConnectionEntity>[], this.selectedConnectionId, final  List<BandwidthPointEntity> bandwidth = const <BandwidthPointEntity>[]}): _connections = connections,_bandwidth = bandwidth,super._();
  

@override@JsonKey() final  BaseStatus status;
@override@JsonKey() final  BaseStatus logoutStatus;
@override final  CustomerEntity? customer;
 final  List<ConnectionEntity> _connections;
@override@JsonKey() List<ConnectionEntity> get connections {
  if (_connections is EqualUnmodifiableListView) return _connections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_connections);
}

@override final  String? selectedConnectionId;
 final  List<BandwidthPointEntity> _bandwidth;
@override@JsonKey() List<BandwidthPointEntity> get bandwidth {
  if (_bandwidth is EqualUnmodifiableListView) return _bandwidth;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bandwidth);
}


/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardStateCopyWith<_DashboardState> get copyWith => __$DashboardStateCopyWithImpl<_DashboardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardState&&(identical(other.status, status) || other.status == status)&&(identical(other.logoutStatus, logoutStatus) || other.logoutStatus == logoutStatus)&&(identical(other.customer, customer) || other.customer == customer)&&const DeepCollectionEquality().equals(other._connections, _connections)&&(identical(other.selectedConnectionId, selectedConnectionId) || other.selectedConnectionId == selectedConnectionId)&&const DeepCollectionEquality().equals(other._bandwidth, _bandwidth));
}


@override
int get hashCode => Object.hash(runtimeType,status,logoutStatus,customer,const DeepCollectionEquality().hash(_connections),selectedConnectionId,const DeepCollectionEquality().hash(_bandwidth));

@override
String toString() {
  return 'DashboardState(status: $status, logoutStatus: $logoutStatus, customer: $customer, connections: $connections, selectedConnectionId: $selectedConnectionId, bandwidth: $bandwidth)';
}


}

/// @nodoc
abstract mixin class _$DashboardStateCopyWith<$Res> implements $DashboardStateCopyWith<$Res> {
  factory _$DashboardStateCopyWith(_DashboardState value, $Res Function(_DashboardState) _then) = __$DashboardStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, BaseStatus logoutStatus, CustomerEntity? customer, List<ConnectionEntity> connections, String? selectedConnectionId, List<BandwidthPointEntity> bandwidth
});


@override $BaseStatusCopyWith<$Res> get status;@override $BaseStatusCopyWith<$Res> get logoutStatus;@override $CustomerEntityCopyWith<$Res>? get customer;

}
/// @nodoc
class __$DashboardStateCopyWithImpl<$Res>
    implements _$DashboardStateCopyWith<$Res> {
  __$DashboardStateCopyWithImpl(this._self, this._then);

  final _DashboardState _self;
  final $Res Function(_DashboardState) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? logoutStatus = null,Object? customer = freezed,Object? connections = null,Object? selectedConnectionId = freezed,Object? bandwidth = null,}) {
  return _then(_DashboardState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,logoutStatus: null == logoutStatus ? _self.logoutStatus : logoutStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,customer: freezed == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as CustomerEntity?,connections: null == connections ? _self._connections : connections // ignore: cast_nullable_to_non_nullable
as List<ConnectionEntity>,selectedConnectionId: freezed == selectedConnectionId ? _self.selectedConnectionId : selectedConnectionId // ignore: cast_nullable_to_non_nullable
as String?,bandwidth: null == bandwidth ? _self._bandwidth : bandwidth // ignore: cast_nullable_to_non_nullable
as List<BandwidthPointEntity>,
  ));
}

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get logoutStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.logoutStatus, (value) {
    return _then(_self.copyWith(logoutStatus: value));
  });
}/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerEntityCopyWith<$Res>? get customer {
    if (_self.customer == null) {
    return null;
  }

  return $CustomerEntityCopyWith<$Res>(_self.customer!, (value) {
    return _then(_self.copyWith(customer: value));
  });
}
}

// dart format on
