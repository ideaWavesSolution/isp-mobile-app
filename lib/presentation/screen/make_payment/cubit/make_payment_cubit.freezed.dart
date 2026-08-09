// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'make_payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MakePaymentState {

 BaseStatus get payStatus; PaymentEntity? get payment;
/// Create a copy of MakePaymentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MakePaymentStateCopyWith<MakePaymentState> get copyWith => _$MakePaymentStateCopyWithImpl<MakePaymentState>(this as MakePaymentState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MakePaymentState&&(identical(other.payStatus, payStatus) || other.payStatus == payStatus)&&(identical(other.payment, payment) || other.payment == payment));
}


@override
int get hashCode => Object.hash(runtimeType,payStatus,payment);

@override
String toString() {
  return 'MakePaymentState(payStatus: $payStatus, payment: $payment)';
}


}

/// @nodoc
abstract mixin class $MakePaymentStateCopyWith<$Res>  {
  factory $MakePaymentStateCopyWith(MakePaymentState value, $Res Function(MakePaymentState) _then) = _$MakePaymentStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus payStatus, PaymentEntity? payment
});


$BaseStatusCopyWith<$Res> get payStatus;$PaymentEntityCopyWith<$Res>? get payment;

}
/// @nodoc
class _$MakePaymentStateCopyWithImpl<$Res>
    implements $MakePaymentStateCopyWith<$Res> {
  _$MakePaymentStateCopyWithImpl(this._self, this._then);

  final MakePaymentState _self;
  final $Res Function(MakePaymentState) _then;

/// Create a copy of MakePaymentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? payStatus = null,Object? payment = freezed,}) {
  return _then(_self.copyWith(
payStatus: null == payStatus ? _self.payStatus : payStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentEntity?,
  ));
}
/// Create a copy of MakePaymentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get payStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.payStatus, (value) {
    return _then(_self.copyWith(payStatus: value));
  });
}/// Create a copy of MakePaymentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentEntityCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $PaymentEntityCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}


/// Adds pattern-matching-related methods to [MakePaymentState].
extension MakePaymentStatePatterns on MakePaymentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MakePaymentState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MakePaymentState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MakePaymentState value)  $default,){
final _that = this;
switch (_that) {
case _MakePaymentState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MakePaymentState value)?  $default,){
final _that = this;
switch (_that) {
case _MakePaymentState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus payStatus,  PaymentEntity? payment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MakePaymentState() when $default != null:
return $default(_that.payStatus,_that.payment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus payStatus,  PaymentEntity? payment)  $default,) {final _that = this;
switch (_that) {
case _MakePaymentState():
return $default(_that.payStatus,_that.payment);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus payStatus,  PaymentEntity? payment)?  $default,) {final _that = this;
switch (_that) {
case _MakePaymentState() when $default != null:
return $default(_that.payStatus,_that.payment);case _:
  return null;

}
}

}

/// @nodoc


class _MakePaymentState implements MakePaymentState {
  const _MakePaymentState({this.payStatus = const BaseStatus.initial(), this.payment});
  

@override@JsonKey() final  BaseStatus payStatus;
@override final  PaymentEntity? payment;

/// Create a copy of MakePaymentState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MakePaymentStateCopyWith<_MakePaymentState> get copyWith => __$MakePaymentStateCopyWithImpl<_MakePaymentState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MakePaymentState&&(identical(other.payStatus, payStatus) || other.payStatus == payStatus)&&(identical(other.payment, payment) || other.payment == payment));
}


@override
int get hashCode => Object.hash(runtimeType,payStatus,payment);

@override
String toString() {
  return 'MakePaymentState(payStatus: $payStatus, payment: $payment)';
}


}

/// @nodoc
abstract mixin class _$MakePaymentStateCopyWith<$Res> implements $MakePaymentStateCopyWith<$Res> {
  factory _$MakePaymentStateCopyWith(_MakePaymentState value, $Res Function(_MakePaymentState) _then) = __$MakePaymentStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus payStatus, PaymentEntity? payment
});


@override $BaseStatusCopyWith<$Res> get payStatus;@override $PaymentEntityCopyWith<$Res>? get payment;

}
/// @nodoc
class __$MakePaymentStateCopyWithImpl<$Res>
    implements _$MakePaymentStateCopyWith<$Res> {
  __$MakePaymentStateCopyWithImpl(this._self, this._then);

  final _MakePaymentState _self;
  final $Res Function(_MakePaymentState) _then;

/// Create a copy of MakePaymentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? payStatus = null,Object? payment = freezed,}) {
  return _then(_MakePaymentState(
payStatus: null == payStatus ? _self.payStatus : payStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentEntity?,
  ));
}

/// Create a copy of MakePaymentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get payStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.payStatus, (value) {
    return _then(_self.copyWith(payStatus: value));
  });
}/// Create a copy of MakePaymentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentEntityCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $PaymentEntityCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}

// dart format on
