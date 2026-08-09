// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentHistoryState {

 BaseStatus get status; List<PaymentEntity> get payments;
/// Create a copy of PaymentHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentHistoryStateCopyWith<PaymentHistoryState> get copyWith => _$PaymentHistoryStateCopyWithImpl<PaymentHistoryState>(this as PaymentHistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentHistoryState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.payments, payments));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(payments));

@override
String toString() {
  return 'PaymentHistoryState(status: $status, payments: $payments)';
}


}

/// @nodoc
abstract mixin class $PaymentHistoryStateCopyWith<$Res>  {
  factory $PaymentHistoryStateCopyWith(PaymentHistoryState value, $Res Function(PaymentHistoryState) _then) = _$PaymentHistoryStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, List<PaymentEntity> payments
});


$BaseStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$PaymentHistoryStateCopyWithImpl<$Res>
    implements $PaymentHistoryStateCopyWith<$Res> {
  _$PaymentHistoryStateCopyWithImpl(this._self, this._then);

  final PaymentHistoryState _self;
  final $Res Function(PaymentHistoryState) _then;

/// Create a copy of PaymentHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? payments = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,payments: null == payments ? _self.payments : payments // ignore: cast_nullable_to_non_nullable
as List<PaymentEntity>,
  ));
}
/// Create a copy of PaymentHistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentHistoryState].
extension PaymentHistoryStatePatterns on PaymentHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentHistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentHistoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentHistoryState value)  $default,){
final _that = this;
switch (_that) {
case _PaymentHistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentHistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentHistoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  List<PaymentEntity> payments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentHistoryState() when $default != null:
return $default(_that.status,_that.payments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  List<PaymentEntity> payments)  $default,) {final _that = this;
switch (_that) {
case _PaymentHistoryState():
return $default(_that.status,_that.payments);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  List<PaymentEntity> payments)?  $default,) {final _that = this;
switch (_that) {
case _PaymentHistoryState() when $default != null:
return $default(_that.status,_that.payments);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentHistoryState implements PaymentHistoryState {
  const _PaymentHistoryState({this.status = const BaseStatus.initial(), final  List<PaymentEntity> payments = const <PaymentEntity>[]}): _payments = payments;
  

@override@JsonKey() final  BaseStatus status;
 final  List<PaymentEntity> _payments;
@override@JsonKey() List<PaymentEntity> get payments {
  if (_payments is EqualUnmodifiableListView) return _payments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_payments);
}


/// Create a copy of PaymentHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentHistoryStateCopyWith<_PaymentHistoryState> get copyWith => __$PaymentHistoryStateCopyWithImpl<_PaymentHistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentHistoryState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._payments, _payments));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_payments));

@override
String toString() {
  return 'PaymentHistoryState(status: $status, payments: $payments)';
}


}

/// @nodoc
abstract mixin class _$PaymentHistoryStateCopyWith<$Res> implements $PaymentHistoryStateCopyWith<$Res> {
  factory _$PaymentHistoryStateCopyWith(_PaymentHistoryState value, $Res Function(_PaymentHistoryState) _then) = __$PaymentHistoryStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, List<PaymentEntity> payments
});


@override $BaseStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$PaymentHistoryStateCopyWithImpl<$Res>
    implements _$PaymentHistoryStateCopyWith<$Res> {
  __$PaymentHistoryStateCopyWithImpl(this._self, this._then);

  final _PaymentHistoryState _self;
  final $Res Function(_PaymentHistoryState) _then;

/// Create a copy of PaymentHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? payments = null,}) {
  return _then(_PaymentHistoryState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,payments: null == payments ? _self._payments : payments // ignore: cast_nullable_to_non_nullable
as List<PaymentEntity>,
  ));
}

/// Create a copy of PaymentHistoryState
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
