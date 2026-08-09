// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginRequestModel {

 String get ip; String get password;
/// Create a copy of LoginRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginRequestModelCopyWith<LoginRequestModel> get copyWith => _$LoginRequestModelCopyWithImpl<LoginRequestModel>(this as LoginRequestModel, _$identity);

  /// Serializes this LoginRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginRequestModel&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ip,password);

@override
String toString() {
  return 'LoginRequestModel(ip: $ip, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginRequestModelCopyWith<$Res>  {
  factory $LoginRequestModelCopyWith(LoginRequestModel value, $Res Function(LoginRequestModel) _then) = _$LoginRequestModelCopyWithImpl;
@useResult
$Res call({
 String ip, String password
});




}
/// @nodoc
class _$LoginRequestModelCopyWithImpl<$Res>
    implements $LoginRequestModelCopyWith<$Res> {
  _$LoginRequestModelCopyWithImpl(this._self, this._then);

  final LoginRequestModel _self;
  final $Res Function(LoginRequestModel) _then;

/// Create a copy of LoginRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ip = null,Object? password = null,}) {
  return _then(_self.copyWith(
ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginRequestModel].
extension LoginRequestModelPatterns on LoginRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ip,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginRequestModel() when $default != null:
return $default(_that.ip,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ip,  String password)  $default,) {final _that = this;
switch (_that) {
case _LoginRequestModel():
return $default(_that.ip,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ip,  String password)?  $default,) {final _that = this;
switch (_that) {
case _LoginRequestModel() when $default != null:
return $default(_that.ip,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginRequestModel implements LoginRequestModel {
  const _LoginRequestModel({required this.ip, required this.password});
  factory _LoginRequestModel.fromJson(Map<String, dynamic> json) => _$LoginRequestModelFromJson(json);

@override final  String ip;
@override final  String password;

/// Create a copy of LoginRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginRequestModelCopyWith<_LoginRequestModel> get copyWith => __$LoginRequestModelCopyWithImpl<_LoginRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginRequestModel&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ip,password);

@override
String toString() {
  return 'LoginRequestModel(ip: $ip, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginRequestModelCopyWith<$Res> implements $LoginRequestModelCopyWith<$Res> {
  factory _$LoginRequestModelCopyWith(_LoginRequestModel value, $Res Function(_LoginRequestModel) _then) = __$LoginRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String ip, String password
});




}
/// @nodoc
class __$LoginRequestModelCopyWithImpl<$Res>
    implements _$LoginRequestModelCopyWith<$Res> {
  __$LoginRequestModelCopyWithImpl(this._self, this._then);

  final _LoginRequestModel _self;
  final $Res Function(_LoginRequestModel) _then;

/// Create a copy of LoginRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ip = null,Object? password = null,}) {
  return _then(_LoginRequestModel(
ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RegisterRequestModel {

 String get fullName; String get phone; String get address; String get packageInterest;
/// Create a copy of RegisterRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterRequestModelCopyWith<RegisterRequestModel> get copyWith => _$RegisterRequestModelCopyWithImpl<RegisterRequestModel>(this as RegisterRequestModel, _$identity);

  /// Serializes this RegisterRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterRequestModel&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.packageInterest, packageInterest) || other.packageInterest == packageInterest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,phone,address,packageInterest);

@override
String toString() {
  return 'RegisterRequestModel(fullName: $fullName, phone: $phone, address: $address, packageInterest: $packageInterest)';
}


}

/// @nodoc
abstract mixin class $RegisterRequestModelCopyWith<$Res>  {
  factory $RegisterRequestModelCopyWith(RegisterRequestModel value, $Res Function(RegisterRequestModel) _then) = _$RegisterRequestModelCopyWithImpl;
@useResult
$Res call({
 String fullName, String phone, String address, String packageInterest
});




}
/// @nodoc
class _$RegisterRequestModelCopyWithImpl<$Res>
    implements $RegisterRequestModelCopyWith<$Res> {
  _$RegisterRequestModelCopyWithImpl(this._self, this._then);

  final RegisterRequestModel _self;
  final $Res Function(RegisterRequestModel) _then;

/// Create a copy of RegisterRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = null,Object? phone = null,Object? address = null,Object? packageInterest = null,}) {
  return _then(_self.copyWith(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,packageInterest: null == packageInterest ? _self.packageInterest : packageInterest // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterRequestModel].
extension RegisterRequestModelPatterns on RegisterRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _RegisterRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fullName,  String phone,  String address,  String packageInterest)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterRequestModel() when $default != null:
return $default(_that.fullName,_that.phone,_that.address,_that.packageInterest);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fullName,  String phone,  String address,  String packageInterest)  $default,) {final _that = this;
switch (_that) {
case _RegisterRequestModel():
return $default(_that.fullName,_that.phone,_that.address,_that.packageInterest);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fullName,  String phone,  String address,  String packageInterest)?  $default,) {final _that = this;
switch (_that) {
case _RegisterRequestModel() when $default != null:
return $default(_that.fullName,_that.phone,_that.address,_that.packageInterest);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterRequestModel implements RegisterRequestModel {
  const _RegisterRequestModel({required this.fullName, required this.phone, required this.address, required this.packageInterest});
  factory _RegisterRequestModel.fromJson(Map<String, dynamic> json) => _$RegisterRequestModelFromJson(json);

@override final  String fullName;
@override final  String phone;
@override final  String address;
@override final  String packageInterest;

/// Create a copy of RegisterRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterRequestModelCopyWith<_RegisterRequestModel> get copyWith => __$RegisterRequestModelCopyWithImpl<_RegisterRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterRequestModel&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.packageInterest, packageInterest) || other.packageInterest == packageInterest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,phone,address,packageInterest);

@override
String toString() {
  return 'RegisterRequestModel(fullName: $fullName, phone: $phone, address: $address, packageInterest: $packageInterest)';
}


}

/// @nodoc
abstract mixin class _$RegisterRequestModelCopyWith<$Res> implements $RegisterRequestModelCopyWith<$Res> {
  factory _$RegisterRequestModelCopyWith(_RegisterRequestModel value, $Res Function(_RegisterRequestModel) _then) = __$RegisterRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String fullName, String phone, String address, String packageInterest
});




}
/// @nodoc
class __$RegisterRequestModelCopyWithImpl<$Res>
    implements _$RegisterRequestModelCopyWith<$Res> {
  __$RegisterRequestModelCopyWithImpl(this._self, this._then);

  final _RegisterRequestModel _self;
  final $Res Function(_RegisterRequestModel) _then;

/// Create a copy of RegisterRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,Object? phone = null,Object? address = null,Object? packageInterest = null,}) {
  return _then(_RegisterRequestModel(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,packageInterest: null == packageInterest ? _self.packageInterest : packageInterest // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ChangePackageRequestModel {

 String get connectionId; String get packageId;
/// Create a copy of ChangePackageRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePackageRequestModelCopyWith<ChangePackageRequestModel> get copyWith => _$ChangePackageRequestModelCopyWithImpl<ChangePackageRequestModel>(this as ChangePackageRequestModel, _$identity);

  /// Serializes this ChangePackageRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePackageRequestModel&&(identical(other.connectionId, connectionId) || other.connectionId == connectionId)&&(identical(other.packageId, packageId) || other.packageId == packageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,connectionId,packageId);

@override
String toString() {
  return 'ChangePackageRequestModel(connectionId: $connectionId, packageId: $packageId)';
}


}

/// @nodoc
abstract mixin class $ChangePackageRequestModelCopyWith<$Res>  {
  factory $ChangePackageRequestModelCopyWith(ChangePackageRequestModel value, $Res Function(ChangePackageRequestModel) _then) = _$ChangePackageRequestModelCopyWithImpl;
@useResult
$Res call({
 String connectionId, String packageId
});




}
/// @nodoc
class _$ChangePackageRequestModelCopyWithImpl<$Res>
    implements $ChangePackageRequestModelCopyWith<$Res> {
  _$ChangePackageRequestModelCopyWithImpl(this._self, this._then);

  final ChangePackageRequestModel _self;
  final $Res Function(ChangePackageRequestModel) _then;

/// Create a copy of ChangePackageRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? connectionId = null,Object? packageId = null,}) {
  return _then(_self.copyWith(
connectionId: null == connectionId ? _self.connectionId : connectionId // ignore: cast_nullable_to_non_nullable
as String,packageId: null == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangePackageRequestModel].
extension ChangePackageRequestModelPatterns on ChangePackageRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangePackageRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangePackageRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangePackageRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _ChangePackageRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangePackageRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChangePackageRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String connectionId,  String packageId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangePackageRequestModel() when $default != null:
return $default(_that.connectionId,_that.packageId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String connectionId,  String packageId)  $default,) {final _that = this;
switch (_that) {
case _ChangePackageRequestModel():
return $default(_that.connectionId,_that.packageId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String connectionId,  String packageId)?  $default,) {final _that = this;
switch (_that) {
case _ChangePackageRequestModel() when $default != null:
return $default(_that.connectionId,_that.packageId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangePackageRequestModel implements ChangePackageRequestModel {
  const _ChangePackageRequestModel({required this.connectionId, required this.packageId});
  factory _ChangePackageRequestModel.fromJson(Map<String, dynamic> json) => _$ChangePackageRequestModelFromJson(json);

@override final  String connectionId;
@override final  String packageId;

/// Create a copy of ChangePackageRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePackageRequestModelCopyWith<_ChangePackageRequestModel> get copyWith => __$ChangePackageRequestModelCopyWithImpl<_ChangePackageRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangePackageRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePackageRequestModel&&(identical(other.connectionId, connectionId) || other.connectionId == connectionId)&&(identical(other.packageId, packageId) || other.packageId == packageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,connectionId,packageId);

@override
String toString() {
  return 'ChangePackageRequestModel(connectionId: $connectionId, packageId: $packageId)';
}


}

/// @nodoc
abstract mixin class _$ChangePackageRequestModelCopyWith<$Res> implements $ChangePackageRequestModelCopyWith<$Res> {
  factory _$ChangePackageRequestModelCopyWith(_ChangePackageRequestModel value, $Res Function(_ChangePackageRequestModel) _then) = __$ChangePackageRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String connectionId, String packageId
});




}
/// @nodoc
class __$ChangePackageRequestModelCopyWithImpl<$Res>
    implements _$ChangePackageRequestModelCopyWith<$Res> {
  __$ChangePackageRequestModelCopyWithImpl(this._self, this._then);

  final _ChangePackageRequestModel _self;
  final $Res Function(_ChangePackageRequestModel) _then;

/// Create a copy of ChangePackageRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? connectionId = null,Object? packageId = null,}) {
  return _then(_ChangePackageRequestModel(
connectionId: null == connectionId ? _self.connectionId : connectionId // ignore: cast_nullable_to_non_nullable
as String,packageId: null == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MakePaymentRequestModel {

 double get amount; String get method;
/// Create a copy of MakePaymentRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MakePaymentRequestModelCopyWith<MakePaymentRequestModel> get copyWith => _$MakePaymentRequestModelCopyWithImpl<MakePaymentRequestModel>(this as MakePaymentRequestModel, _$identity);

  /// Serializes this MakePaymentRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MakePaymentRequestModel&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.method, method) || other.method == method));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,method);

@override
String toString() {
  return 'MakePaymentRequestModel(amount: $amount, method: $method)';
}


}

/// @nodoc
abstract mixin class $MakePaymentRequestModelCopyWith<$Res>  {
  factory $MakePaymentRequestModelCopyWith(MakePaymentRequestModel value, $Res Function(MakePaymentRequestModel) _then) = _$MakePaymentRequestModelCopyWithImpl;
@useResult
$Res call({
 double amount, String method
});




}
/// @nodoc
class _$MakePaymentRequestModelCopyWithImpl<$Res>
    implements $MakePaymentRequestModelCopyWith<$Res> {
  _$MakePaymentRequestModelCopyWithImpl(this._self, this._then);

  final MakePaymentRequestModel _self;
  final $Res Function(MakePaymentRequestModel) _then;

/// Create a copy of MakePaymentRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? method = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MakePaymentRequestModel].
extension MakePaymentRequestModelPatterns on MakePaymentRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MakePaymentRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MakePaymentRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MakePaymentRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _MakePaymentRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MakePaymentRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _MakePaymentRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double amount,  String method)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MakePaymentRequestModel() when $default != null:
return $default(_that.amount,_that.method);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double amount,  String method)  $default,) {final _that = this;
switch (_that) {
case _MakePaymentRequestModel():
return $default(_that.amount,_that.method);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double amount,  String method)?  $default,) {final _that = this;
switch (_that) {
case _MakePaymentRequestModel() when $default != null:
return $default(_that.amount,_that.method);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MakePaymentRequestModel implements MakePaymentRequestModel {
  const _MakePaymentRequestModel({required this.amount, required this.method});
  factory _MakePaymentRequestModel.fromJson(Map<String, dynamic> json) => _$MakePaymentRequestModelFromJson(json);

@override final  double amount;
@override final  String method;

/// Create a copy of MakePaymentRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MakePaymentRequestModelCopyWith<_MakePaymentRequestModel> get copyWith => __$MakePaymentRequestModelCopyWithImpl<_MakePaymentRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MakePaymentRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MakePaymentRequestModel&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.method, method) || other.method == method));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,method);

@override
String toString() {
  return 'MakePaymentRequestModel(amount: $amount, method: $method)';
}


}

/// @nodoc
abstract mixin class _$MakePaymentRequestModelCopyWith<$Res> implements $MakePaymentRequestModelCopyWith<$Res> {
  factory _$MakePaymentRequestModelCopyWith(_MakePaymentRequestModel value, $Res Function(_MakePaymentRequestModel) _then) = __$MakePaymentRequestModelCopyWithImpl;
@override @useResult
$Res call({
 double amount, String method
});




}
/// @nodoc
class __$MakePaymentRequestModelCopyWithImpl<$Res>
    implements _$MakePaymentRequestModelCopyWith<$Res> {
  __$MakePaymentRequestModelCopyWithImpl(this._self, this._then);

  final _MakePaymentRequestModel _self;
  final $Res Function(_MakePaymentRequestModel) _then;

/// Create a copy of MakePaymentRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? method = null,}) {
  return _then(_MakePaymentRequestModel(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CreateTicketRequestModel {

 String get type; String get issue;
/// Create a copy of CreateTicketRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTicketRequestModelCopyWith<CreateTicketRequestModel> get copyWith => _$CreateTicketRequestModelCopyWithImpl<CreateTicketRequestModel>(this as CreateTicketRequestModel, _$identity);

  /// Serializes this CreateTicketRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTicketRequestModel&&(identical(other.type, type) || other.type == type)&&(identical(other.issue, issue) || other.issue == issue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,issue);

@override
String toString() {
  return 'CreateTicketRequestModel(type: $type, issue: $issue)';
}


}

/// @nodoc
abstract mixin class $CreateTicketRequestModelCopyWith<$Res>  {
  factory $CreateTicketRequestModelCopyWith(CreateTicketRequestModel value, $Res Function(CreateTicketRequestModel) _then) = _$CreateTicketRequestModelCopyWithImpl;
@useResult
$Res call({
 String type, String issue
});




}
/// @nodoc
class _$CreateTicketRequestModelCopyWithImpl<$Res>
    implements $CreateTicketRequestModelCopyWith<$Res> {
  _$CreateTicketRequestModelCopyWithImpl(this._self, this._then);

  final CreateTicketRequestModel _self;
  final $Res Function(CreateTicketRequestModel) _then;

/// Create a copy of CreateTicketRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? issue = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,issue: null == issue ? _self.issue : issue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateTicketRequestModel].
extension CreateTicketRequestModelPatterns on CreateTicketRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTicketRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTicketRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTicketRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateTicketRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTicketRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTicketRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String issue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTicketRequestModel() when $default != null:
return $default(_that.type,_that.issue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String issue)  $default,) {final _that = this;
switch (_that) {
case _CreateTicketRequestModel():
return $default(_that.type,_that.issue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String issue)?  $default,) {final _that = this;
switch (_that) {
case _CreateTicketRequestModel() when $default != null:
return $default(_that.type,_that.issue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateTicketRequestModel implements CreateTicketRequestModel {
  const _CreateTicketRequestModel({required this.type, required this.issue});
  factory _CreateTicketRequestModel.fromJson(Map<String, dynamic> json) => _$CreateTicketRequestModelFromJson(json);

@override final  String type;
@override final  String issue;

/// Create a copy of CreateTicketRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTicketRequestModelCopyWith<_CreateTicketRequestModel> get copyWith => __$CreateTicketRequestModelCopyWithImpl<_CreateTicketRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateTicketRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTicketRequestModel&&(identical(other.type, type) || other.type == type)&&(identical(other.issue, issue) || other.issue == issue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,issue);

@override
String toString() {
  return 'CreateTicketRequestModel(type: $type, issue: $issue)';
}


}

/// @nodoc
abstract mixin class _$CreateTicketRequestModelCopyWith<$Res> implements $CreateTicketRequestModelCopyWith<$Res> {
  factory _$CreateTicketRequestModelCopyWith(_CreateTicketRequestModel value, $Res Function(_CreateTicketRequestModel) _then) = __$CreateTicketRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String type, String issue
});




}
/// @nodoc
class __$CreateTicketRequestModelCopyWithImpl<$Res>
    implements _$CreateTicketRequestModelCopyWith<$Res> {
  __$CreateTicketRequestModelCopyWithImpl(this._self, this._then);

  final _CreateTicketRequestModel _self;
  final $Res Function(_CreateTicketRequestModel) _then;

/// Create a copy of CreateTicketRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? issue = null,}) {
  return _then(_CreateTicketRequestModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,issue: null == issue ? _self.issue : issue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
