// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEntity {

 String get ip; String get password;
/// Create a copy of LoginEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginEntityCopyWith<LoginEntity> get copyWith => _$LoginEntityCopyWithImpl<LoginEntity>(this as LoginEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEntity&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,ip,password);

@override
String toString() {
  return 'LoginEntity(ip: $ip, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginEntityCopyWith<$Res>  {
  factory $LoginEntityCopyWith(LoginEntity value, $Res Function(LoginEntity) _then) = _$LoginEntityCopyWithImpl;
@useResult
$Res call({
 String ip, String password
});




}
/// @nodoc
class _$LoginEntityCopyWithImpl<$Res>
    implements $LoginEntityCopyWith<$Res> {
  _$LoginEntityCopyWithImpl(this._self, this._then);

  final LoginEntity _self;
  final $Res Function(LoginEntity) _then;

/// Create a copy of LoginEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ip = null,Object? password = null,}) {
  return _then(_self.copyWith(
ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginEntity].
extension LoginEntityPatterns on LoginEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginEntity value)  $default,){
final _that = this;
switch (_that) {
case _LoginEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LoginEntity() when $default != null:
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
case _LoginEntity() when $default != null:
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
case _LoginEntity():
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
case _LoginEntity() when $default != null:
return $default(_that.ip,_that.password);case _:
  return null;

}
}

}

/// @nodoc


class _LoginEntity implements LoginEntity {
  const _LoginEntity({required this.ip, required this.password});
  

@override final  String ip;
@override final  String password;

/// Create a copy of LoginEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginEntityCopyWith<_LoginEntity> get copyWith => __$LoginEntityCopyWithImpl<_LoginEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginEntity&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,ip,password);

@override
String toString() {
  return 'LoginEntity(ip: $ip, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginEntityCopyWith<$Res> implements $LoginEntityCopyWith<$Res> {
  factory _$LoginEntityCopyWith(_LoginEntity value, $Res Function(_LoginEntity) _then) = __$LoginEntityCopyWithImpl;
@override @useResult
$Res call({
 String ip, String password
});




}
/// @nodoc
class __$LoginEntityCopyWithImpl<$Res>
    implements _$LoginEntityCopyWith<$Res> {
  __$LoginEntityCopyWithImpl(this._self, this._then);

  final _LoginEntity _self;
  final $Res Function(_LoginEntity) _then;

/// Create a copy of LoginEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ip = null,Object? password = null,}) {
  return _then(_LoginEntity(
ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$RegistrationEntity {

 String get fullName; String get phone; String get address; String get packageInterest;
/// Create a copy of RegistrationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegistrationEntityCopyWith<RegistrationEntity> get copyWith => _$RegistrationEntityCopyWithImpl<RegistrationEntity>(this as RegistrationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationEntity&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.packageInterest, packageInterest) || other.packageInterest == packageInterest));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,phone,address,packageInterest);

@override
String toString() {
  return 'RegistrationEntity(fullName: $fullName, phone: $phone, address: $address, packageInterest: $packageInterest)';
}


}

/// @nodoc
abstract mixin class $RegistrationEntityCopyWith<$Res>  {
  factory $RegistrationEntityCopyWith(RegistrationEntity value, $Res Function(RegistrationEntity) _then) = _$RegistrationEntityCopyWithImpl;
@useResult
$Res call({
 String fullName, String phone, String address, String packageInterest
});




}
/// @nodoc
class _$RegistrationEntityCopyWithImpl<$Res>
    implements $RegistrationEntityCopyWith<$Res> {
  _$RegistrationEntityCopyWithImpl(this._self, this._then);

  final RegistrationEntity _self;
  final $Res Function(RegistrationEntity) _then;

/// Create a copy of RegistrationEntity
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


/// Adds pattern-matching-related methods to [RegistrationEntity].
extension RegistrationEntityPatterns on RegistrationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegistrationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegistrationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegistrationEntity value)  $default,){
final _that = this;
switch (_that) {
case _RegistrationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegistrationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RegistrationEntity() when $default != null:
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
case _RegistrationEntity() when $default != null:
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
case _RegistrationEntity():
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
case _RegistrationEntity() when $default != null:
return $default(_that.fullName,_that.phone,_that.address,_that.packageInterest);case _:
  return null;

}
}

}

/// @nodoc


class _RegistrationEntity implements RegistrationEntity {
  const _RegistrationEntity({required this.fullName, required this.phone, required this.address, required this.packageInterest});
  

@override final  String fullName;
@override final  String phone;
@override final  String address;
@override final  String packageInterest;

/// Create a copy of RegistrationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegistrationEntityCopyWith<_RegistrationEntity> get copyWith => __$RegistrationEntityCopyWithImpl<_RegistrationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegistrationEntity&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.packageInterest, packageInterest) || other.packageInterest == packageInterest));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,phone,address,packageInterest);

@override
String toString() {
  return 'RegistrationEntity(fullName: $fullName, phone: $phone, address: $address, packageInterest: $packageInterest)';
}


}

/// @nodoc
abstract mixin class _$RegistrationEntityCopyWith<$Res> implements $RegistrationEntityCopyWith<$Res> {
  factory _$RegistrationEntityCopyWith(_RegistrationEntity value, $Res Function(_RegistrationEntity) _then) = __$RegistrationEntityCopyWithImpl;
@override @useResult
$Res call({
 String fullName, String phone, String address, String packageInterest
});




}
/// @nodoc
class __$RegistrationEntityCopyWithImpl<$Res>
    implements _$RegistrationEntityCopyWith<$Res> {
  __$RegistrationEntityCopyWithImpl(this._self, this._then);

  final _RegistrationEntity _self;
  final $Res Function(_RegistrationEntity) _then;

/// Create a copy of RegistrationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,Object? phone = null,Object? address = null,Object? packageInterest = null,}) {
  return _then(_RegistrationEntity(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,packageInterest: null == packageInterest ? _self.packageInterest : packageInterest // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CustomerEntity {

 String get id; String get name; String get username; CustomerStatus get status;
/// Create a copy of CustomerEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerEntityCopyWith<CustomerEntity> get copyWith => _$CustomerEntityCopyWithImpl<CustomerEntity>(this as CustomerEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,username,status);

@override
String toString() {
  return 'CustomerEntity(id: $id, name: $name, username: $username, status: $status)';
}


}

/// @nodoc
abstract mixin class $CustomerEntityCopyWith<$Res>  {
  factory $CustomerEntityCopyWith(CustomerEntity value, $Res Function(CustomerEntity) _then) = _$CustomerEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String username, CustomerStatus status
});




}
/// @nodoc
class _$CustomerEntityCopyWithImpl<$Res>
    implements $CustomerEntityCopyWith<$Res> {
  _$CustomerEntityCopyWithImpl(this._self, this._then);

  final CustomerEntity _self;
  final $Res Function(CustomerEntity) _then;

/// Create a copy of CustomerEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? username = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CustomerStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerEntity].
extension CustomerEntityPatterns on CustomerEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerEntity value)  $default,){
final _that = this;
switch (_that) {
case _CustomerEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String username,  CustomerStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerEntity() when $default != null:
return $default(_that.id,_that.name,_that.username,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String username,  CustomerStatus status)  $default,) {final _that = this;
switch (_that) {
case _CustomerEntity():
return $default(_that.id,_that.name,_that.username,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String username,  CustomerStatus status)?  $default,) {final _that = this;
switch (_that) {
case _CustomerEntity() when $default != null:
return $default(_that.id,_that.name,_that.username,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _CustomerEntity implements CustomerEntity {
  const _CustomerEntity({required this.id, required this.name, required this.username, required this.status});
  

@override final  String id;
@override final  String name;
@override final  String username;
@override final  CustomerStatus status;

/// Create a copy of CustomerEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerEntityCopyWith<_CustomerEntity> get copyWith => __$CustomerEntityCopyWithImpl<_CustomerEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,username,status);

@override
String toString() {
  return 'CustomerEntity(id: $id, name: $name, username: $username, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CustomerEntityCopyWith<$Res> implements $CustomerEntityCopyWith<$Res> {
  factory _$CustomerEntityCopyWith(_CustomerEntity value, $Res Function(_CustomerEntity) _then) = __$CustomerEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String username, CustomerStatus status
});




}
/// @nodoc
class __$CustomerEntityCopyWithImpl<$Res>
    implements _$CustomerEntityCopyWith<$Res> {
  __$CustomerEntityCopyWithImpl(this._self, this._then);

  final _CustomerEntity _self;
  final $Res Function(_CustomerEntity) _then;

/// Create a copy of CustomerEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? username = null,Object? status = null,}) {
  return _then(_CustomerEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CustomerStatus,
  ));
}


}

/// @nodoc
mixin _$ConnectionEntity {

 String get id; String get name; String get ip; CustomerStatus get status; String get packageName; double get monthlyBill; double get balanceDue; DateTime get expireDate; double get uploadBytes; double get downloadBytes; Duration get uptime;
/// Create a copy of ConnectionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectionEntityCopyWith<ConnectionEntity> get copyWith => _$ConnectionEntityCopyWithImpl<ConnectionEntity>(this as ConnectionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.status, status) || other.status == status)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.monthlyBill, monthlyBill) || other.monthlyBill == monthlyBill)&&(identical(other.balanceDue, balanceDue) || other.balanceDue == balanceDue)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate)&&(identical(other.uploadBytes, uploadBytes) || other.uploadBytes == uploadBytes)&&(identical(other.downloadBytes, downloadBytes) || other.downloadBytes == downloadBytes)&&(identical(other.uptime, uptime) || other.uptime == uptime));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,ip,status,packageName,monthlyBill,balanceDue,expireDate,uploadBytes,downloadBytes,uptime);

@override
String toString() {
  return 'ConnectionEntity(id: $id, name: $name, ip: $ip, status: $status, packageName: $packageName, monthlyBill: $monthlyBill, balanceDue: $balanceDue, expireDate: $expireDate, uploadBytes: $uploadBytes, downloadBytes: $downloadBytes, uptime: $uptime)';
}


}

/// @nodoc
abstract mixin class $ConnectionEntityCopyWith<$Res>  {
  factory $ConnectionEntityCopyWith(ConnectionEntity value, $Res Function(ConnectionEntity) _then) = _$ConnectionEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String ip, CustomerStatus status, String packageName, double monthlyBill, double balanceDue, DateTime expireDate, double uploadBytes, double downloadBytes, Duration uptime
});




}
/// @nodoc
class _$ConnectionEntityCopyWithImpl<$Res>
    implements $ConnectionEntityCopyWith<$Res> {
  _$ConnectionEntityCopyWithImpl(this._self, this._then);

  final ConnectionEntity _self;
  final $Res Function(ConnectionEntity) _then;

/// Create a copy of ConnectionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? ip = null,Object? status = null,Object? packageName = null,Object? monthlyBill = null,Object? balanceDue = null,Object? expireDate = null,Object? uploadBytes = null,Object? downloadBytes = null,Object? uptime = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CustomerStatus,packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,monthlyBill: null == monthlyBill ? _self.monthlyBill : monthlyBill // ignore: cast_nullable_to_non_nullable
as double,balanceDue: null == balanceDue ? _self.balanceDue : balanceDue // ignore: cast_nullable_to_non_nullable
as double,expireDate: null == expireDate ? _self.expireDate : expireDate // ignore: cast_nullable_to_non_nullable
as DateTime,uploadBytes: null == uploadBytes ? _self.uploadBytes : uploadBytes // ignore: cast_nullable_to_non_nullable
as double,downloadBytes: null == downloadBytes ? _self.downloadBytes : downloadBytes // ignore: cast_nullable_to_non_nullable
as double,uptime: null == uptime ? _self.uptime : uptime // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}

}


/// Adds pattern-matching-related methods to [ConnectionEntity].
extension ConnectionEntityPatterns on ConnectionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectionEntity value)  $default,){
final _that = this;
switch (_that) {
case _ConnectionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String ip,  CustomerStatus status,  String packageName,  double monthlyBill,  double balanceDue,  DateTime expireDate,  double uploadBytes,  double downloadBytes,  Duration uptime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectionEntity() when $default != null:
return $default(_that.id,_that.name,_that.ip,_that.status,_that.packageName,_that.monthlyBill,_that.balanceDue,_that.expireDate,_that.uploadBytes,_that.downloadBytes,_that.uptime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String ip,  CustomerStatus status,  String packageName,  double monthlyBill,  double balanceDue,  DateTime expireDate,  double uploadBytes,  double downloadBytes,  Duration uptime)  $default,) {final _that = this;
switch (_that) {
case _ConnectionEntity():
return $default(_that.id,_that.name,_that.ip,_that.status,_that.packageName,_that.monthlyBill,_that.balanceDue,_that.expireDate,_that.uploadBytes,_that.downloadBytes,_that.uptime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String ip,  CustomerStatus status,  String packageName,  double monthlyBill,  double balanceDue,  DateTime expireDate,  double uploadBytes,  double downloadBytes,  Duration uptime)?  $default,) {final _that = this;
switch (_that) {
case _ConnectionEntity() when $default != null:
return $default(_that.id,_that.name,_that.ip,_that.status,_that.packageName,_that.monthlyBill,_that.balanceDue,_that.expireDate,_that.uploadBytes,_that.downloadBytes,_that.uptime);case _:
  return null;

}
}

}

/// @nodoc


class _ConnectionEntity implements ConnectionEntity {
  const _ConnectionEntity({required this.id, required this.name, required this.ip, required this.status, required this.packageName, required this.monthlyBill, required this.balanceDue, required this.expireDate, required this.uploadBytes, required this.downloadBytes, required this.uptime});
  

@override final  String id;
@override final  String name;
@override final  String ip;
@override final  CustomerStatus status;
@override final  String packageName;
@override final  double monthlyBill;
@override final  double balanceDue;
@override final  DateTime expireDate;
@override final  double uploadBytes;
@override final  double downloadBytes;
@override final  Duration uptime;

/// Create a copy of ConnectionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectionEntityCopyWith<_ConnectionEntity> get copyWith => __$ConnectionEntityCopyWithImpl<_ConnectionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.status, status) || other.status == status)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.monthlyBill, monthlyBill) || other.monthlyBill == monthlyBill)&&(identical(other.balanceDue, balanceDue) || other.balanceDue == balanceDue)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate)&&(identical(other.uploadBytes, uploadBytes) || other.uploadBytes == uploadBytes)&&(identical(other.downloadBytes, downloadBytes) || other.downloadBytes == downloadBytes)&&(identical(other.uptime, uptime) || other.uptime == uptime));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,ip,status,packageName,monthlyBill,balanceDue,expireDate,uploadBytes,downloadBytes,uptime);

@override
String toString() {
  return 'ConnectionEntity(id: $id, name: $name, ip: $ip, status: $status, packageName: $packageName, monthlyBill: $monthlyBill, balanceDue: $balanceDue, expireDate: $expireDate, uploadBytes: $uploadBytes, downloadBytes: $downloadBytes, uptime: $uptime)';
}


}

/// @nodoc
abstract mixin class _$ConnectionEntityCopyWith<$Res> implements $ConnectionEntityCopyWith<$Res> {
  factory _$ConnectionEntityCopyWith(_ConnectionEntity value, $Res Function(_ConnectionEntity) _then) = __$ConnectionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String ip, CustomerStatus status, String packageName, double monthlyBill, double balanceDue, DateTime expireDate, double uploadBytes, double downloadBytes, Duration uptime
});




}
/// @nodoc
class __$ConnectionEntityCopyWithImpl<$Res>
    implements _$ConnectionEntityCopyWith<$Res> {
  __$ConnectionEntityCopyWithImpl(this._self, this._then);

  final _ConnectionEntity _self;
  final $Res Function(_ConnectionEntity) _then;

/// Create a copy of ConnectionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? ip = null,Object? status = null,Object? packageName = null,Object? monthlyBill = null,Object? balanceDue = null,Object? expireDate = null,Object? uploadBytes = null,Object? downloadBytes = null,Object? uptime = null,}) {
  return _then(_ConnectionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CustomerStatus,packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,monthlyBill: null == monthlyBill ? _self.monthlyBill : monthlyBill // ignore: cast_nullable_to_non_nullable
as double,balanceDue: null == balanceDue ? _self.balanceDue : balanceDue // ignore: cast_nullable_to_non_nullable
as double,expireDate: null == expireDate ? _self.expireDate : expireDate // ignore: cast_nullable_to_non_nullable
as DateTime,uploadBytes: null == uploadBytes ? _self.uploadBytes : uploadBytes // ignore: cast_nullable_to_non_nullable
as double,downloadBytes: null == downloadBytes ? _self.downloadBytes : downloadBytes // ignore: cast_nullable_to_non_nullable
as double,uptime: null == uptime ? _self.uptime : uptime // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}

/// @nodoc
mixin _$BandwidthPointEntity {

 DateTime get time; double get rxBytes; double get txBytes;
/// Create a copy of BandwidthPointEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BandwidthPointEntityCopyWith<BandwidthPointEntity> get copyWith => _$BandwidthPointEntityCopyWithImpl<BandwidthPointEntity>(this as BandwidthPointEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BandwidthPointEntity&&(identical(other.time, time) || other.time == time)&&(identical(other.rxBytes, rxBytes) || other.rxBytes == rxBytes)&&(identical(other.txBytes, txBytes) || other.txBytes == txBytes));
}


@override
int get hashCode => Object.hash(runtimeType,time,rxBytes,txBytes);

@override
String toString() {
  return 'BandwidthPointEntity(time: $time, rxBytes: $rxBytes, txBytes: $txBytes)';
}


}

/// @nodoc
abstract mixin class $BandwidthPointEntityCopyWith<$Res>  {
  factory $BandwidthPointEntityCopyWith(BandwidthPointEntity value, $Res Function(BandwidthPointEntity) _then) = _$BandwidthPointEntityCopyWithImpl;
@useResult
$Res call({
 DateTime time, double rxBytes, double txBytes
});




}
/// @nodoc
class _$BandwidthPointEntityCopyWithImpl<$Res>
    implements $BandwidthPointEntityCopyWith<$Res> {
  _$BandwidthPointEntityCopyWithImpl(this._self, this._then);

  final BandwidthPointEntity _self;
  final $Res Function(BandwidthPointEntity) _then;

/// Create a copy of BandwidthPointEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = null,Object? rxBytes = null,Object? txBytes = null,}) {
  return _then(_self.copyWith(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,rxBytes: null == rxBytes ? _self.rxBytes : rxBytes // ignore: cast_nullable_to_non_nullable
as double,txBytes: null == txBytes ? _self.txBytes : txBytes // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [BandwidthPointEntity].
extension BandwidthPointEntityPatterns on BandwidthPointEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BandwidthPointEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BandwidthPointEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BandwidthPointEntity value)  $default,){
final _that = this;
switch (_that) {
case _BandwidthPointEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BandwidthPointEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BandwidthPointEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime time,  double rxBytes,  double txBytes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BandwidthPointEntity() when $default != null:
return $default(_that.time,_that.rxBytes,_that.txBytes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime time,  double rxBytes,  double txBytes)  $default,) {final _that = this;
switch (_that) {
case _BandwidthPointEntity():
return $default(_that.time,_that.rxBytes,_that.txBytes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime time,  double rxBytes,  double txBytes)?  $default,) {final _that = this;
switch (_that) {
case _BandwidthPointEntity() when $default != null:
return $default(_that.time,_that.rxBytes,_that.txBytes);case _:
  return null;

}
}

}

/// @nodoc


class _BandwidthPointEntity implements BandwidthPointEntity {
  const _BandwidthPointEntity({required this.time, required this.rxBytes, required this.txBytes});
  

@override final  DateTime time;
@override final  double rxBytes;
@override final  double txBytes;

/// Create a copy of BandwidthPointEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BandwidthPointEntityCopyWith<_BandwidthPointEntity> get copyWith => __$BandwidthPointEntityCopyWithImpl<_BandwidthPointEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BandwidthPointEntity&&(identical(other.time, time) || other.time == time)&&(identical(other.rxBytes, rxBytes) || other.rxBytes == rxBytes)&&(identical(other.txBytes, txBytes) || other.txBytes == txBytes));
}


@override
int get hashCode => Object.hash(runtimeType,time,rxBytes,txBytes);

@override
String toString() {
  return 'BandwidthPointEntity(time: $time, rxBytes: $rxBytes, txBytes: $txBytes)';
}


}

/// @nodoc
abstract mixin class _$BandwidthPointEntityCopyWith<$Res> implements $BandwidthPointEntityCopyWith<$Res> {
  factory _$BandwidthPointEntityCopyWith(_BandwidthPointEntity value, $Res Function(_BandwidthPointEntity) _then) = __$BandwidthPointEntityCopyWithImpl;
@override @useResult
$Res call({
 DateTime time, double rxBytes, double txBytes
});




}
/// @nodoc
class __$BandwidthPointEntityCopyWithImpl<$Res>
    implements _$BandwidthPointEntityCopyWith<$Res> {
  __$BandwidthPointEntityCopyWithImpl(this._self, this._then);

  final _BandwidthPointEntity _self;
  final $Res Function(_BandwidthPointEntity) _then;

/// Create a copy of BandwidthPointEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,Object? rxBytes = null,Object? txBytes = null,}) {
  return _then(_BandwidthPointEntity(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,rxBytes: null == rxBytes ? _self.rxBytes : rxBytes // ignore: cast_nullable_to_non_nullable
as double,txBytes: null == txBytes ? _self.txBytes : txBytes // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$PackageEntity {

 String get id; String get name; double get priceBdt; String get billingCycle; List<String> get features; bool get isCurrent;
/// Create a copy of PackageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageEntityCopyWith<PackageEntity> get copyWith => _$PackageEntityCopyWithImpl<PackageEntity>(this as PackageEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.priceBdt, priceBdt) || other.priceBdt == priceBdt)&&(identical(other.billingCycle, billingCycle) || other.billingCycle == billingCycle)&&const DeepCollectionEquality().equals(other.features, features)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,priceBdt,billingCycle,const DeepCollectionEquality().hash(features),isCurrent);

@override
String toString() {
  return 'PackageEntity(id: $id, name: $name, priceBdt: $priceBdt, billingCycle: $billingCycle, features: $features, isCurrent: $isCurrent)';
}


}

/// @nodoc
abstract mixin class $PackageEntityCopyWith<$Res>  {
  factory $PackageEntityCopyWith(PackageEntity value, $Res Function(PackageEntity) _then) = _$PackageEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, double priceBdt, String billingCycle, List<String> features, bool isCurrent
});




}
/// @nodoc
class _$PackageEntityCopyWithImpl<$Res>
    implements $PackageEntityCopyWith<$Res> {
  _$PackageEntityCopyWithImpl(this._self, this._then);

  final PackageEntity _self;
  final $Res Function(PackageEntity) _then;

/// Create a copy of PackageEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? priceBdt = null,Object? billingCycle = null,Object? features = null,Object? isCurrent = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,priceBdt: null == priceBdt ? _self.priceBdt : priceBdt // ignore: cast_nullable_to_non_nullable
as double,billingCycle: null == billingCycle ? _self.billingCycle : billingCycle // ignore: cast_nullable_to_non_nullable
as String,features: null == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<String>,isCurrent: null == isCurrent ? _self.isCurrent : isCurrent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PackageEntity].
extension PackageEntityPatterns on PackageEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageEntity value)  $default,){
final _that = this;
switch (_that) {
case _PackageEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PackageEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  double priceBdt,  String billingCycle,  List<String> features,  bool isCurrent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageEntity() when $default != null:
return $default(_that.id,_that.name,_that.priceBdt,_that.billingCycle,_that.features,_that.isCurrent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  double priceBdt,  String billingCycle,  List<String> features,  bool isCurrent)  $default,) {final _that = this;
switch (_that) {
case _PackageEntity():
return $default(_that.id,_that.name,_that.priceBdt,_that.billingCycle,_that.features,_that.isCurrent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  double priceBdt,  String billingCycle,  List<String> features,  bool isCurrent)?  $default,) {final _that = this;
switch (_that) {
case _PackageEntity() when $default != null:
return $default(_that.id,_that.name,_that.priceBdt,_that.billingCycle,_that.features,_that.isCurrent);case _:
  return null;

}
}

}

/// @nodoc


class _PackageEntity implements PackageEntity {
  const _PackageEntity({required this.id, required this.name, required this.priceBdt, required this.billingCycle, required final  List<String> features, this.isCurrent = false}): _features = features;
  

@override final  String id;
@override final  String name;
@override final  double priceBdt;
@override final  String billingCycle;
 final  List<String> _features;
@override List<String> get features {
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_features);
}

@override@JsonKey() final  bool isCurrent;

/// Create a copy of PackageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageEntityCopyWith<_PackageEntity> get copyWith => __$PackageEntityCopyWithImpl<_PackageEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.priceBdt, priceBdt) || other.priceBdt == priceBdt)&&(identical(other.billingCycle, billingCycle) || other.billingCycle == billingCycle)&&const DeepCollectionEquality().equals(other._features, _features)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,priceBdt,billingCycle,const DeepCollectionEquality().hash(_features),isCurrent);

@override
String toString() {
  return 'PackageEntity(id: $id, name: $name, priceBdt: $priceBdt, billingCycle: $billingCycle, features: $features, isCurrent: $isCurrent)';
}


}

/// @nodoc
abstract mixin class _$PackageEntityCopyWith<$Res> implements $PackageEntityCopyWith<$Res> {
  factory _$PackageEntityCopyWith(_PackageEntity value, $Res Function(_PackageEntity) _then) = __$PackageEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, double priceBdt, String billingCycle, List<String> features, bool isCurrent
});




}
/// @nodoc
class __$PackageEntityCopyWithImpl<$Res>
    implements _$PackageEntityCopyWith<$Res> {
  __$PackageEntityCopyWithImpl(this._self, this._then);

  final _PackageEntity _self;
  final $Res Function(_PackageEntity) _then;

/// Create a copy of PackageEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? priceBdt = null,Object? billingCycle = null,Object? features = null,Object? isCurrent = null,}) {
  return _then(_PackageEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,priceBdt: null == priceBdt ? _self.priceBdt : priceBdt // ignore: cast_nullable_to_non_nullable
as double,billingCycle: null == billingCycle ? _self.billingCycle : billingCycle // ignore: cast_nullable_to_non_nullable
as String,features: null == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<String>,isCurrent: null == isCurrent ? _self.isCurrent : isCurrent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$PaymentEntity {

 String get id; DateTime get date; String get month; double get amountPaid; PaymentMethod get method; String get createdBy;
/// Create a copy of PaymentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentEntityCopyWith<PaymentEntity> get copyWith => _$PaymentEntityCopyWithImpl<PaymentEntity>(this as PaymentEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.month, month) || other.month == month)&&(identical(other.amountPaid, amountPaid) || other.amountPaid == amountPaid)&&(identical(other.method, method) || other.method == method)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}


@override
int get hashCode => Object.hash(runtimeType,id,date,month,amountPaid,method,createdBy);

@override
String toString() {
  return 'PaymentEntity(id: $id, date: $date, month: $month, amountPaid: $amountPaid, method: $method, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $PaymentEntityCopyWith<$Res>  {
  factory $PaymentEntityCopyWith(PaymentEntity value, $Res Function(PaymentEntity) _then) = _$PaymentEntityCopyWithImpl;
@useResult
$Res call({
 String id, DateTime date, String month, double amountPaid, PaymentMethod method, String createdBy
});




}
/// @nodoc
class _$PaymentEntityCopyWithImpl<$Res>
    implements $PaymentEntityCopyWith<$Res> {
  _$PaymentEntityCopyWithImpl(this._self, this._then);

  final PaymentEntity _self;
  final $Res Function(PaymentEntity) _then;

/// Create a copy of PaymentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? date = null,Object? month = null,Object? amountPaid = null,Object? method = null,Object? createdBy = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,amountPaid: null == amountPaid ? _self.amountPaid : amountPaid // ignore: cast_nullable_to_non_nullable
as double,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as PaymentMethod,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentEntity].
extension PaymentEntityPatterns on PaymentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime date,  String month,  double amountPaid,  PaymentMethod method,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentEntity() when $default != null:
return $default(_that.id,_that.date,_that.month,_that.amountPaid,_that.method,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime date,  String month,  double amountPaid,  PaymentMethod method,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _PaymentEntity():
return $default(_that.id,_that.date,_that.month,_that.amountPaid,_that.method,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime date,  String month,  double amountPaid,  PaymentMethod method,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _PaymentEntity() when $default != null:
return $default(_that.id,_that.date,_that.month,_that.amountPaid,_that.method,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentEntity implements PaymentEntity {
  const _PaymentEntity({required this.id, required this.date, required this.month, required this.amountPaid, required this.method, required this.createdBy});
  

@override final  String id;
@override final  DateTime date;
@override final  String month;
@override final  double amountPaid;
@override final  PaymentMethod method;
@override final  String createdBy;

/// Create a copy of PaymentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentEntityCopyWith<_PaymentEntity> get copyWith => __$PaymentEntityCopyWithImpl<_PaymentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.month, month) || other.month == month)&&(identical(other.amountPaid, amountPaid) || other.amountPaid == amountPaid)&&(identical(other.method, method) || other.method == method)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}


@override
int get hashCode => Object.hash(runtimeType,id,date,month,amountPaid,method,createdBy);

@override
String toString() {
  return 'PaymentEntity(id: $id, date: $date, month: $month, amountPaid: $amountPaid, method: $method, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$PaymentEntityCopyWith<$Res> implements $PaymentEntityCopyWith<$Res> {
  factory _$PaymentEntityCopyWith(_PaymentEntity value, $Res Function(_PaymentEntity) _then) = __$PaymentEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime date, String month, double amountPaid, PaymentMethod method, String createdBy
});




}
/// @nodoc
class __$PaymentEntityCopyWithImpl<$Res>
    implements _$PaymentEntityCopyWith<$Res> {
  __$PaymentEntityCopyWithImpl(this._self, this._then);

  final _PaymentEntity _self;
  final $Res Function(_PaymentEntity) _then;

/// Create a copy of PaymentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? month = null,Object? amountPaid = null,Object? method = null,Object? createdBy = null,}) {
  return _then(_PaymentEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,amountPaid: null == amountPaid ? _self.amountPaid : amountPaid // ignore: cast_nullable_to_non_nullable
as double,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as PaymentMethod,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TicketEntity {

 String get id; DateTime get date; String get type; String get issue; TicketStatus get status; String get createdBy;
/// Create a copy of TicketEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketEntityCopyWith<TicketEntity> get copyWith => _$TicketEntityCopyWithImpl<TicketEntity>(this as TicketEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.type, type) || other.type == type)&&(identical(other.issue, issue) || other.issue == issue)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}


@override
int get hashCode => Object.hash(runtimeType,id,date,type,issue,status,createdBy);

@override
String toString() {
  return 'TicketEntity(id: $id, date: $date, type: $type, issue: $issue, status: $status, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $TicketEntityCopyWith<$Res>  {
  factory $TicketEntityCopyWith(TicketEntity value, $Res Function(TicketEntity) _then) = _$TicketEntityCopyWithImpl;
@useResult
$Res call({
 String id, DateTime date, String type, String issue, TicketStatus status, String createdBy
});




}
/// @nodoc
class _$TicketEntityCopyWithImpl<$Res>
    implements $TicketEntityCopyWith<$Res> {
  _$TicketEntityCopyWithImpl(this._self, this._then);

  final TicketEntity _self;
  final $Res Function(TicketEntity) _then;

/// Create a copy of TicketEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? date = null,Object? type = null,Object? issue = null,Object? status = null,Object? createdBy = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,issue: null == issue ? _self.issue : issue // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TicketStatus,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketEntity].
extension TicketEntityPatterns on TicketEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketEntity value)  $default,){
final _that = this;
switch (_that) {
case _TicketEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TicketEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime date,  String type,  String issue,  TicketStatus status,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketEntity() when $default != null:
return $default(_that.id,_that.date,_that.type,_that.issue,_that.status,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime date,  String type,  String issue,  TicketStatus status,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _TicketEntity():
return $default(_that.id,_that.date,_that.type,_that.issue,_that.status,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime date,  String type,  String issue,  TicketStatus status,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _TicketEntity() when $default != null:
return $default(_that.id,_that.date,_that.type,_that.issue,_that.status,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc


class _TicketEntity implements TicketEntity {
  const _TicketEntity({required this.id, required this.date, required this.type, required this.issue, required this.status, required this.createdBy});
  

@override final  String id;
@override final  DateTime date;
@override final  String type;
@override final  String issue;
@override final  TicketStatus status;
@override final  String createdBy;

/// Create a copy of TicketEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketEntityCopyWith<_TicketEntity> get copyWith => __$TicketEntityCopyWithImpl<_TicketEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.type, type) || other.type == type)&&(identical(other.issue, issue) || other.issue == issue)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}


@override
int get hashCode => Object.hash(runtimeType,id,date,type,issue,status,createdBy);

@override
String toString() {
  return 'TicketEntity(id: $id, date: $date, type: $type, issue: $issue, status: $status, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$TicketEntityCopyWith<$Res> implements $TicketEntityCopyWith<$Res> {
  factory _$TicketEntityCopyWith(_TicketEntity value, $Res Function(_TicketEntity) _then) = __$TicketEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime date, String type, String issue, TicketStatus status, String createdBy
});




}
/// @nodoc
class __$TicketEntityCopyWithImpl<$Res>
    implements _$TicketEntityCopyWith<$Res> {
  __$TicketEntityCopyWithImpl(this._self, this._then);

  final _TicketEntity _self;
  final $Res Function(_TicketEntity) _then;

/// Create a copy of TicketEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? type = null,Object? issue = null,Object? status = null,Object? createdBy = null,}) {
  return _then(_TicketEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,issue: null == issue ? _self.issue : issue // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TicketStatus,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MediaCategoryEntity {

 String get id; MediaCategoryType get type; String get name; int get itemCount;
/// Create a copy of MediaCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaCategoryEntityCopyWith<MediaCategoryEntity> get copyWith => _$MediaCategoryEntityCopyWithImpl<MediaCategoryEntity>(this as MediaCategoryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaCategoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,name,itemCount);

@override
String toString() {
  return 'MediaCategoryEntity(id: $id, type: $type, name: $name, itemCount: $itemCount)';
}


}

/// @nodoc
abstract mixin class $MediaCategoryEntityCopyWith<$Res>  {
  factory $MediaCategoryEntityCopyWith(MediaCategoryEntity value, $Res Function(MediaCategoryEntity) _then) = _$MediaCategoryEntityCopyWithImpl;
@useResult
$Res call({
 String id, MediaCategoryType type, String name, int itemCount
});




}
/// @nodoc
class _$MediaCategoryEntityCopyWithImpl<$Res>
    implements $MediaCategoryEntityCopyWith<$Res> {
  _$MediaCategoryEntityCopyWithImpl(this._self, this._then);

  final MediaCategoryEntity _self;
  final $Res Function(MediaCategoryEntity) _then;

/// Create a copy of MediaCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? name = null,Object? itemCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MediaCategoryType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaCategoryEntity].
extension MediaCategoryEntityPatterns on MediaCategoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaCategoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaCategoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaCategoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _MediaCategoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaCategoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MediaCategoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  MediaCategoryType type,  String name,  int itemCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaCategoryEntity() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.itemCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  MediaCategoryType type,  String name,  int itemCount)  $default,) {final _that = this;
switch (_that) {
case _MediaCategoryEntity():
return $default(_that.id,_that.type,_that.name,_that.itemCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  MediaCategoryType type,  String name,  int itemCount)?  $default,) {final _that = this;
switch (_that) {
case _MediaCategoryEntity() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.itemCount);case _:
  return null;

}
}

}

/// @nodoc


class _MediaCategoryEntity implements MediaCategoryEntity {
  const _MediaCategoryEntity({required this.id, required this.type, required this.name, required this.itemCount});
  

@override final  String id;
@override final  MediaCategoryType type;
@override final  String name;
@override final  int itemCount;

/// Create a copy of MediaCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaCategoryEntityCopyWith<_MediaCategoryEntity> get copyWith => __$MediaCategoryEntityCopyWithImpl<_MediaCategoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaCategoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,name,itemCount);

@override
String toString() {
  return 'MediaCategoryEntity(id: $id, type: $type, name: $name, itemCount: $itemCount)';
}


}

/// @nodoc
abstract mixin class _$MediaCategoryEntityCopyWith<$Res> implements $MediaCategoryEntityCopyWith<$Res> {
  factory _$MediaCategoryEntityCopyWith(_MediaCategoryEntity value, $Res Function(_MediaCategoryEntity) _then) = __$MediaCategoryEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, MediaCategoryType type, String name, int itemCount
});




}
/// @nodoc
class __$MediaCategoryEntityCopyWithImpl<$Res>
    implements _$MediaCategoryEntityCopyWith<$Res> {
  __$MediaCategoryEntityCopyWithImpl(this._self, this._then);

  final _MediaCategoryEntity _self;
  final $Res Function(_MediaCategoryEntity) _then;

/// Create a copy of MediaCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? name = null,Object? itemCount = null,}) {
  return _then(_MediaCategoryEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MediaCategoryType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MediaItemEntity {

 String get id; String get categoryId; String get name; String get description;
/// Create a copy of MediaItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaItemEntityCopyWith<MediaItemEntity> get copyWith => _$MediaItemEntityCopyWithImpl<MediaItemEntity>(this as MediaItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,categoryId,name,description);

@override
String toString() {
  return 'MediaItemEntity(id: $id, categoryId: $categoryId, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $MediaItemEntityCopyWith<$Res>  {
  factory $MediaItemEntityCopyWith(MediaItemEntity value, $Res Function(MediaItemEntity) _then) = _$MediaItemEntityCopyWithImpl;
@useResult
$Res call({
 String id, String categoryId, String name, String description
});




}
/// @nodoc
class _$MediaItemEntityCopyWithImpl<$Res>
    implements $MediaItemEntityCopyWith<$Res> {
  _$MediaItemEntityCopyWithImpl(this._self, this._then);

  final MediaItemEntity _self;
  final $Res Function(MediaItemEntity) _then;

/// Create a copy of MediaItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? categoryId = null,Object? name = null,Object? description = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaItemEntity].
extension MediaItemEntityPatterns on MediaItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _MediaItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MediaItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String categoryId,  String name,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaItemEntity() when $default != null:
return $default(_that.id,_that.categoryId,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String categoryId,  String name,  String description)  $default,) {final _that = this;
switch (_that) {
case _MediaItemEntity():
return $default(_that.id,_that.categoryId,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String categoryId,  String name,  String description)?  $default,) {final _that = this;
switch (_that) {
case _MediaItemEntity() when $default != null:
return $default(_that.id,_that.categoryId,_that.name,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _MediaItemEntity implements MediaItemEntity {
  const _MediaItemEntity({required this.id, required this.categoryId, required this.name, required this.description});
  

@override final  String id;
@override final  String categoryId;
@override final  String name;
@override final  String description;

/// Create a copy of MediaItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaItemEntityCopyWith<_MediaItemEntity> get copyWith => __$MediaItemEntityCopyWithImpl<_MediaItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,categoryId,name,description);

@override
String toString() {
  return 'MediaItemEntity(id: $id, categoryId: $categoryId, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$MediaItemEntityCopyWith<$Res> implements $MediaItemEntityCopyWith<$Res> {
  factory _$MediaItemEntityCopyWith(_MediaItemEntity value, $Res Function(_MediaItemEntity) _then) = __$MediaItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String categoryId, String name, String description
});




}
/// @nodoc
class __$MediaItemEntityCopyWithImpl<$Res>
    implements _$MediaItemEntityCopyWith<$Res> {
  __$MediaItemEntityCopyWithImpl(this._self, this._then);

  final _MediaItemEntity _self;
  final $Res Function(_MediaItemEntity) _then;

/// Create a copy of MediaItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? categoryId = null,Object? name = null,Object? description = null,}) {
  return _then(_MediaItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
