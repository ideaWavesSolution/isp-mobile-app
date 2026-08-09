// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_ticket_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateTicketState {

 BaseStatus get submitStatus; TicketEntity? get ticket;
/// Create a copy of CreateTicketState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTicketStateCopyWith<CreateTicketState> get copyWith => _$CreateTicketStateCopyWithImpl<CreateTicketState>(this as CreateTicketState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTicketState&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.ticket, ticket) || other.ticket == ticket));
}


@override
int get hashCode => Object.hash(runtimeType,submitStatus,ticket);

@override
String toString() {
  return 'CreateTicketState(submitStatus: $submitStatus, ticket: $ticket)';
}


}

/// @nodoc
abstract mixin class $CreateTicketStateCopyWith<$Res>  {
  factory $CreateTicketStateCopyWith(CreateTicketState value, $Res Function(CreateTicketState) _then) = _$CreateTicketStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus submitStatus, TicketEntity? ticket
});


$BaseStatusCopyWith<$Res> get submitStatus;$TicketEntityCopyWith<$Res>? get ticket;

}
/// @nodoc
class _$CreateTicketStateCopyWithImpl<$Res>
    implements $CreateTicketStateCopyWith<$Res> {
  _$CreateTicketStateCopyWithImpl(this._self, this._then);

  final CreateTicketState _self;
  final $Res Function(CreateTicketState) _then;

/// Create a copy of CreateTicketState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? submitStatus = null,Object? ticket = freezed,}) {
  return _then(_self.copyWith(
submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,ticket: freezed == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as TicketEntity?,
  ));
}
/// Create a copy of CreateTicketState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get submitStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.submitStatus, (value) {
    return _then(_self.copyWith(submitStatus: value));
  });
}/// Create a copy of CreateTicketState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketEntityCopyWith<$Res>? get ticket {
    if (_self.ticket == null) {
    return null;
  }

  return $TicketEntityCopyWith<$Res>(_self.ticket!, (value) {
    return _then(_self.copyWith(ticket: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateTicketState].
extension CreateTicketStatePatterns on CreateTicketState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTicketState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTicketState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTicketState value)  $default,){
final _that = this;
switch (_that) {
case _CreateTicketState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTicketState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTicketState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus submitStatus,  TicketEntity? ticket)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTicketState() when $default != null:
return $default(_that.submitStatus,_that.ticket);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus submitStatus,  TicketEntity? ticket)  $default,) {final _that = this;
switch (_that) {
case _CreateTicketState():
return $default(_that.submitStatus,_that.ticket);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus submitStatus,  TicketEntity? ticket)?  $default,) {final _that = this;
switch (_that) {
case _CreateTicketState() when $default != null:
return $default(_that.submitStatus,_that.ticket);case _:
  return null;

}
}

}

/// @nodoc


class _CreateTicketState implements CreateTicketState {
  const _CreateTicketState({this.submitStatus = const BaseStatus.initial(), this.ticket});
  

@override@JsonKey() final  BaseStatus submitStatus;
@override final  TicketEntity? ticket;

/// Create a copy of CreateTicketState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTicketStateCopyWith<_CreateTicketState> get copyWith => __$CreateTicketStateCopyWithImpl<_CreateTicketState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTicketState&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.ticket, ticket) || other.ticket == ticket));
}


@override
int get hashCode => Object.hash(runtimeType,submitStatus,ticket);

@override
String toString() {
  return 'CreateTicketState(submitStatus: $submitStatus, ticket: $ticket)';
}


}

/// @nodoc
abstract mixin class _$CreateTicketStateCopyWith<$Res> implements $CreateTicketStateCopyWith<$Res> {
  factory _$CreateTicketStateCopyWith(_CreateTicketState value, $Res Function(_CreateTicketState) _then) = __$CreateTicketStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus submitStatus, TicketEntity? ticket
});


@override $BaseStatusCopyWith<$Res> get submitStatus;@override $TicketEntityCopyWith<$Res>? get ticket;

}
/// @nodoc
class __$CreateTicketStateCopyWithImpl<$Res>
    implements _$CreateTicketStateCopyWith<$Res> {
  __$CreateTicketStateCopyWithImpl(this._self, this._then);

  final _CreateTicketState _self;
  final $Res Function(_CreateTicketState) _then;

/// Create a copy of CreateTicketState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? submitStatus = null,Object? ticket = freezed,}) {
  return _then(_CreateTicketState(
submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,ticket: freezed == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as TicketEntity?,
  ));
}

/// Create a copy of CreateTicketState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get submitStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.submitStatus, (value) {
    return _then(_self.copyWith(submitStatus: value));
  });
}/// Create a copy of CreateTicketState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketEntityCopyWith<$Res>? get ticket {
    if (_self.ticket == null) {
    return null;
  }

  return $TicketEntityCopyWith<$Res>(_self.ticket!, (value) {
    return _then(_self.copyWith(ticket: value));
  });
}
}

// dart format on
