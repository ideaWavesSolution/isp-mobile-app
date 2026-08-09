// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SupportTicketState {

 BaseStatus get status; List<TicketEntity> get tickets;
/// Create a copy of SupportTicketState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportTicketStateCopyWith<SupportTicketState> get copyWith => _$SupportTicketStateCopyWithImpl<SupportTicketState>(this as SupportTicketState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportTicketState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.tickets, tickets));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(tickets));

@override
String toString() {
  return 'SupportTicketState(status: $status, tickets: $tickets)';
}


}

/// @nodoc
abstract mixin class $SupportTicketStateCopyWith<$Res>  {
  factory $SupportTicketStateCopyWith(SupportTicketState value, $Res Function(SupportTicketState) _then) = _$SupportTicketStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, List<TicketEntity> tickets
});


$BaseStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$SupportTicketStateCopyWithImpl<$Res>
    implements $SupportTicketStateCopyWith<$Res> {
  _$SupportTicketStateCopyWithImpl(this._self, this._then);

  final SupportTicketState _self;
  final $Res Function(SupportTicketState) _then;

/// Create a copy of SupportTicketState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? tickets = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,tickets: null == tickets ? _self.tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<TicketEntity>,
  ));
}
/// Create a copy of SupportTicketState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [SupportTicketState].
extension SupportTicketStatePatterns on SupportTicketState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportTicketState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportTicketState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportTicketState value)  $default,){
final _that = this;
switch (_that) {
case _SupportTicketState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportTicketState value)?  $default,){
final _that = this;
switch (_that) {
case _SupportTicketState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  List<TicketEntity> tickets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportTicketState() when $default != null:
return $default(_that.status,_that.tickets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  List<TicketEntity> tickets)  $default,) {final _that = this;
switch (_that) {
case _SupportTicketState():
return $default(_that.status,_that.tickets);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  List<TicketEntity> tickets)?  $default,) {final _that = this;
switch (_that) {
case _SupportTicketState() when $default != null:
return $default(_that.status,_that.tickets);case _:
  return null;

}
}

}

/// @nodoc


class _SupportTicketState implements SupportTicketState {
  const _SupportTicketState({this.status = const BaseStatus.initial(), final  List<TicketEntity> tickets = const <TicketEntity>[]}): _tickets = tickets;
  

@override@JsonKey() final  BaseStatus status;
 final  List<TicketEntity> _tickets;
@override@JsonKey() List<TicketEntity> get tickets {
  if (_tickets is EqualUnmodifiableListView) return _tickets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tickets);
}


/// Create a copy of SupportTicketState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportTicketStateCopyWith<_SupportTicketState> get copyWith => __$SupportTicketStateCopyWithImpl<_SupportTicketState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportTicketState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._tickets, _tickets));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_tickets));

@override
String toString() {
  return 'SupportTicketState(status: $status, tickets: $tickets)';
}


}

/// @nodoc
abstract mixin class _$SupportTicketStateCopyWith<$Res> implements $SupportTicketStateCopyWith<$Res> {
  factory _$SupportTicketStateCopyWith(_SupportTicketState value, $Res Function(_SupportTicketState) _then) = __$SupportTicketStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, List<TicketEntity> tickets
});


@override $BaseStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$SupportTicketStateCopyWithImpl<$Res>
    implements _$SupportTicketStateCopyWith<$Res> {
  __$SupportTicketStateCopyWithImpl(this._self, this._then);

  final _SupportTicketState _self;
  final $Res Function(_SupportTicketState) _then;

/// Create a copy of SupportTicketState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? tickets = null,}) {
  return _then(_SupportTicketState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,tickets: null == tickets ? _self._tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<TicketEntity>,
  ));
}

/// Create a copy of SupportTicketState
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
