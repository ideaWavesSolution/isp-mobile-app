// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerResponseModel {

 String get id; String get name; String get username; String get status;
/// Create a copy of CustomerResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerResponseModelCopyWith<CustomerResponseModel> get copyWith => _$CustomerResponseModelCopyWithImpl<CustomerResponseModel>(this as CustomerResponseModel, _$identity);

  /// Serializes this CustomerResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,username,status);

@override
String toString() {
  return 'CustomerResponseModel(id: $id, name: $name, username: $username, status: $status)';
}


}

/// @nodoc
abstract mixin class $CustomerResponseModelCopyWith<$Res>  {
  factory $CustomerResponseModelCopyWith(CustomerResponseModel value, $Res Function(CustomerResponseModel) _then) = _$CustomerResponseModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String username, String status
});




}
/// @nodoc
class _$CustomerResponseModelCopyWithImpl<$Res>
    implements $CustomerResponseModelCopyWith<$Res> {
  _$CustomerResponseModelCopyWithImpl(this._self, this._then);

  final CustomerResponseModel _self;
  final $Res Function(CustomerResponseModel) _then;

/// Create a copy of CustomerResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? username = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerResponseModel].
extension CustomerResponseModelPatterns on CustomerResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CustomerResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String username,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String username,  String status)  $default,) {final _that = this;
switch (_that) {
case _CustomerResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String username,  String status)?  $default,) {final _that = this;
switch (_that) {
case _CustomerResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.username,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerResponseModel implements CustomerResponseModel {
  const _CustomerResponseModel({required this.id, required this.name, required this.username, required this.status});
  factory _CustomerResponseModel.fromJson(Map<String, dynamic> json) => _$CustomerResponseModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String username;
@override final  String status;

/// Create a copy of CustomerResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerResponseModelCopyWith<_CustomerResponseModel> get copyWith => __$CustomerResponseModelCopyWithImpl<_CustomerResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,username,status);

@override
String toString() {
  return 'CustomerResponseModel(id: $id, name: $name, username: $username, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CustomerResponseModelCopyWith<$Res> implements $CustomerResponseModelCopyWith<$Res> {
  factory _$CustomerResponseModelCopyWith(_CustomerResponseModel value, $Res Function(_CustomerResponseModel) _then) = __$CustomerResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String username, String status
});




}
/// @nodoc
class __$CustomerResponseModelCopyWithImpl<$Res>
    implements _$CustomerResponseModelCopyWith<$Res> {
  __$CustomerResponseModelCopyWithImpl(this._self, this._then);

  final _CustomerResponseModel _self;
  final $Res Function(_CustomerResponseModel) _then;

/// Create a copy of CustomerResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? username = null,Object? status = null,}) {
  return _then(_CustomerResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ConnectionResponseModel {

 String get id; String get name; String get ip; String get status; String get packageName; double get monthlyBill; double get balanceDue; DateTime get expireDate; double get uploadBytes; double get downloadBytes; int get uptimeSeconds;
/// Create a copy of ConnectionResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectionResponseModelCopyWith<ConnectionResponseModel> get copyWith => _$ConnectionResponseModelCopyWithImpl<ConnectionResponseModel>(this as ConnectionResponseModel, _$identity);

  /// Serializes this ConnectionResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.status, status) || other.status == status)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.monthlyBill, monthlyBill) || other.monthlyBill == monthlyBill)&&(identical(other.balanceDue, balanceDue) || other.balanceDue == balanceDue)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate)&&(identical(other.uploadBytes, uploadBytes) || other.uploadBytes == uploadBytes)&&(identical(other.downloadBytes, downloadBytes) || other.downloadBytes == downloadBytes)&&(identical(other.uptimeSeconds, uptimeSeconds) || other.uptimeSeconds == uptimeSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,ip,status,packageName,monthlyBill,balanceDue,expireDate,uploadBytes,downloadBytes,uptimeSeconds);

@override
String toString() {
  return 'ConnectionResponseModel(id: $id, name: $name, ip: $ip, status: $status, packageName: $packageName, monthlyBill: $monthlyBill, balanceDue: $balanceDue, expireDate: $expireDate, uploadBytes: $uploadBytes, downloadBytes: $downloadBytes, uptimeSeconds: $uptimeSeconds)';
}


}

/// @nodoc
abstract mixin class $ConnectionResponseModelCopyWith<$Res>  {
  factory $ConnectionResponseModelCopyWith(ConnectionResponseModel value, $Res Function(ConnectionResponseModel) _then) = _$ConnectionResponseModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String ip, String status, String packageName, double monthlyBill, double balanceDue, DateTime expireDate, double uploadBytes, double downloadBytes, int uptimeSeconds
});




}
/// @nodoc
class _$ConnectionResponseModelCopyWithImpl<$Res>
    implements $ConnectionResponseModelCopyWith<$Res> {
  _$ConnectionResponseModelCopyWithImpl(this._self, this._then);

  final ConnectionResponseModel _self;
  final $Res Function(ConnectionResponseModel) _then;

/// Create a copy of ConnectionResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? ip = null,Object? status = null,Object? packageName = null,Object? monthlyBill = null,Object? balanceDue = null,Object? expireDate = null,Object? uploadBytes = null,Object? downloadBytes = null,Object? uptimeSeconds = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,monthlyBill: null == monthlyBill ? _self.monthlyBill : monthlyBill // ignore: cast_nullable_to_non_nullable
as double,balanceDue: null == balanceDue ? _self.balanceDue : balanceDue // ignore: cast_nullable_to_non_nullable
as double,expireDate: null == expireDate ? _self.expireDate : expireDate // ignore: cast_nullable_to_non_nullable
as DateTime,uploadBytes: null == uploadBytes ? _self.uploadBytes : uploadBytes // ignore: cast_nullable_to_non_nullable
as double,downloadBytes: null == downloadBytes ? _self.downloadBytes : downloadBytes // ignore: cast_nullable_to_non_nullable
as double,uptimeSeconds: null == uptimeSeconds ? _self.uptimeSeconds : uptimeSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ConnectionResponseModel].
extension ConnectionResponseModelPatterns on ConnectionResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectionResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectionResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectionResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ConnectionResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectionResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectionResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String ip,  String status,  String packageName,  double monthlyBill,  double balanceDue,  DateTime expireDate,  double uploadBytes,  double downloadBytes,  int uptimeSeconds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectionResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.ip,_that.status,_that.packageName,_that.monthlyBill,_that.balanceDue,_that.expireDate,_that.uploadBytes,_that.downloadBytes,_that.uptimeSeconds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String ip,  String status,  String packageName,  double monthlyBill,  double balanceDue,  DateTime expireDate,  double uploadBytes,  double downloadBytes,  int uptimeSeconds)  $default,) {final _that = this;
switch (_that) {
case _ConnectionResponseModel():
return $default(_that.id,_that.name,_that.ip,_that.status,_that.packageName,_that.monthlyBill,_that.balanceDue,_that.expireDate,_that.uploadBytes,_that.downloadBytes,_that.uptimeSeconds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String ip,  String status,  String packageName,  double monthlyBill,  double balanceDue,  DateTime expireDate,  double uploadBytes,  double downloadBytes,  int uptimeSeconds)?  $default,) {final _that = this;
switch (_that) {
case _ConnectionResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.ip,_that.status,_that.packageName,_that.monthlyBill,_that.balanceDue,_that.expireDate,_that.uploadBytes,_that.downloadBytes,_that.uptimeSeconds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConnectionResponseModel implements ConnectionResponseModel {
  const _ConnectionResponseModel({required this.id, required this.name, required this.ip, required this.status, required this.packageName, required this.monthlyBill, required this.balanceDue, required this.expireDate, required this.uploadBytes, required this.downloadBytes, required this.uptimeSeconds});
  factory _ConnectionResponseModel.fromJson(Map<String, dynamic> json) => _$ConnectionResponseModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String ip;
@override final  String status;
@override final  String packageName;
@override final  double monthlyBill;
@override final  double balanceDue;
@override final  DateTime expireDate;
@override final  double uploadBytes;
@override final  double downloadBytes;
@override final  int uptimeSeconds;

/// Create a copy of ConnectionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectionResponseModelCopyWith<_ConnectionResponseModel> get copyWith => __$ConnectionResponseModelCopyWithImpl<_ConnectionResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConnectionResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectionResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.status, status) || other.status == status)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.monthlyBill, monthlyBill) || other.monthlyBill == monthlyBill)&&(identical(other.balanceDue, balanceDue) || other.balanceDue == balanceDue)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate)&&(identical(other.uploadBytes, uploadBytes) || other.uploadBytes == uploadBytes)&&(identical(other.downloadBytes, downloadBytes) || other.downloadBytes == downloadBytes)&&(identical(other.uptimeSeconds, uptimeSeconds) || other.uptimeSeconds == uptimeSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,ip,status,packageName,monthlyBill,balanceDue,expireDate,uploadBytes,downloadBytes,uptimeSeconds);

@override
String toString() {
  return 'ConnectionResponseModel(id: $id, name: $name, ip: $ip, status: $status, packageName: $packageName, monthlyBill: $monthlyBill, balanceDue: $balanceDue, expireDate: $expireDate, uploadBytes: $uploadBytes, downloadBytes: $downloadBytes, uptimeSeconds: $uptimeSeconds)';
}


}

/// @nodoc
abstract mixin class _$ConnectionResponseModelCopyWith<$Res> implements $ConnectionResponseModelCopyWith<$Res> {
  factory _$ConnectionResponseModelCopyWith(_ConnectionResponseModel value, $Res Function(_ConnectionResponseModel) _then) = __$ConnectionResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String ip, String status, String packageName, double monthlyBill, double balanceDue, DateTime expireDate, double uploadBytes, double downloadBytes, int uptimeSeconds
});




}
/// @nodoc
class __$ConnectionResponseModelCopyWithImpl<$Res>
    implements _$ConnectionResponseModelCopyWith<$Res> {
  __$ConnectionResponseModelCopyWithImpl(this._self, this._then);

  final _ConnectionResponseModel _self;
  final $Res Function(_ConnectionResponseModel) _then;

/// Create a copy of ConnectionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? ip = null,Object? status = null,Object? packageName = null,Object? monthlyBill = null,Object? balanceDue = null,Object? expireDate = null,Object? uploadBytes = null,Object? downloadBytes = null,Object? uptimeSeconds = null,}) {
  return _then(_ConnectionResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,monthlyBill: null == monthlyBill ? _self.monthlyBill : monthlyBill // ignore: cast_nullable_to_non_nullable
as double,balanceDue: null == balanceDue ? _self.balanceDue : balanceDue // ignore: cast_nullable_to_non_nullable
as double,expireDate: null == expireDate ? _self.expireDate : expireDate // ignore: cast_nullable_to_non_nullable
as DateTime,uploadBytes: null == uploadBytes ? _self.uploadBytes : uploadBytes // ignore: cast_nullable_to_non_nullable
as double,downloadBytes: null == downloadBytes ? _self.downloadBytes : downloadBytes // ignore: cast_nullable_to_non_nullable
as double,uptimeSeconds: null == uptimeSeconds ? _self.uptimeSeconds : uptimeSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$BandwidthPointResponseModel {

 DateTime get time; double get rxBytes; double get txBytes;
/// Create a copy of BandwidthPointResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BandwidthPointResponseModelCopyWith<BandwidthPointResponseModel> get copyWith => _$BandwidthPointResponseModelCopyWithImpl<BandwidthPointResponseModel>(this as BandwidthPointResponseModel, _$identity);

  /// Serializes this BandwidthPointResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BandwidthPointResponseModel&&(identical(other.time, time) || other.time == time)&&(identical(other.rxBytes, rxBytes) || other.rxBytes == rxBytes)&&(identical(other.txBytes, txBytes) || other.txBytes == txBytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,rxBytes,txBytes);

@override
String toString() {
  return 'BandwidthPointResponseModel(time: $time, rxBytes: $rxBytes, txBytes: $txBytes)';
}


}

/// @nodoc
abstract mixin class $BandwidthPointResponseModelCopyWith<$Res>  {
  factory $BandwidthPointResponseModelCopyWith(BandwidthPointResponseModel value, $Res Function(BandwidthPointResponseModel) _then) = _$BandwidthPointResponseModelCopyWithImpl;
@useResult
$Res call({
 DateTime time, double rxBytes, double txBytes
});




}
/// @nodoc
class _$BandwidthPointResponseModelCopyWithImpl<$Res>
    implements $BandwidthPointResponseModelCopyWith<$Res> {
  _$BandwidthPointResponseModelCopyWithImpl(this._self, this._then);

  final BandwidthPointResponseModel _self;
  final $Res Function(BandwidthPointResponseModel) _then;

/// Create a copy of BandwidthPointResponseModel
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


/// Adds pattern-matching-related methods to [BandwidthPointResponseModel].
extension BandwidthPointResponseModelPatterns on BandwidthPointResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BandwidthPointResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BandwidthPointResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BandwidthPointResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _BandwidthPointResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BandwidthPointResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _BandwidthPointResponseModel() when $default != null:
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
case _BandwidthPointResponseModel() when $default != null:
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
case _BandwidthPointResponseModel():
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
case _BandwidthPointResponseModel() when $default != null:
return $default(_that.time,_that.rxBytes,_that.txBytes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BandwidthPointResponseModel implements BandwidthPointResponseModel {
  const _BandwidthPointResponseModel({required this.time, required this.rxBytes, required this.txBytes});
  factory _BandwidthPointResponseModel.fromJson(Map<String, dynamic> json) => _$BandwidthPointResponseModelFromJson(json);

@override final  DateTime time;
@override final  double rxBytes;
@override final  double txBytes;

/// Create a copy of BandwidthPointResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BandwidthPointResponseModelCopyWith<_BandwidthPointResponseModel> get copyWith => __$BandwidthPointResponseModelCopyWithImpl<_BandwidthPointResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BandwidthPointResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BandwidthPointResponseModel&&(identical(other.time, time) || other.time == time)&&(identical(other.rxBytes, rxBytes) || other.rxBytes == rxBytes)&&(identical(other.txBytes, txBytes) || other.txBytes == txBytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,rxBytes,txBytes);

@override
String toString() {
  return 'BandwidthPointResponseModel(time: $time, rxBytes: $rxBytes, txBytes: $txBytes)';
}


}

/// @nodoc
abstract mixin class _$BandwidthPointResponseModelCopyWith<$Res> implements $BandwidthPointResponseModelCopyWith<$Res> {
  factory _$BandwidthPointResponseModelCopyWith(_BandwidthPointResponseModel value, $Res Function(_BandwidthPointResponseModel) _then) = __$BandwidthPointResponseModelCopyWithImpl;
@override @useResult
$Res call({
 DateTime time, double rxBytes, double txBytes
});




}
/// @nodoc
class __$BandwidthPointResponseModelCopyWithImpl<$Res>
    implements _$BandwidthPointResponseModelCopyWith<$Res> {
  __$BandwidthPointResponseModelCopyWithImpl(this._self, this._then);

  final _BandwidthPointResponseModel _self;
  final $Res Function(_BandwidthPointResponseModel) _then;

/// Create a copy of BandwidthPointResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,Object? rxBytes = null,Object? txBytes = null,}) {
  return _then(_BandwidthPointResponseModel(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,rxBytes: null == rxBytes ? _self.rxBytes : rxBytes // ignore: cast_nullable_to_non_nullable
as double,txBytes: null == txBytes ? _self.txBytes : txBytes // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$PackageResponseModel {

 String get id; String get name; double get priceBdt; String get billingCycle; List<String> get features; bool get isCurrent;
/// Create a copy of PackageResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageResponseModelCopyWith<PackageResponseModel> get copyWith => _$PackageResponseModelCopyWithImpl<PackageResponseModel>(this as PackageResponseModel, _$identity);

  /// Serializes this PackageResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.priceBdt, priceBdt) || other.priceBdt == priceBdt)&&(identical(other.billingCycle, billingCycle) || other.billingCycle == billingCycle)&&const DeepCollectionEquality().equals(other.features, features)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,priceBdt,billingCycle,const DeepCollectionEquality().hash(features),isCurrent);

@override
String toString() {
  return 'PackageResponseModel(id: $id, name: $name, priceBdt: $priceBdt, billingCycle: $billingCycle, features: $features, isCurrent: $isCurrent)';
}


}

/// @nodoc
abstract mixin class $PackageResponseModelCopyWith<$Res>  {
  factory $PackageResponseModelCopyWith(PackageResponseModel value, $Res Function(PackageResponseModel) _then) = _$PackageResponseModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, double priceBdt, String billingCycle, List<String> features, bool isCurrent
});




}
/// @nodoc
class _$PackageResponseModelCopyWithImpl<$Res>
    implements $PackageResponseModelCopyWith<$Res> {
  _$PackageResponseModelCopyWithImpl(this._self, this._then);

  final PackageResponseModel _self;
  final $Res Function(PackageResponseModel) _then;

/// Create a copy of PackageResponseModel
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


/// Adds pattern-matching-related methods to [PackageResponseModel].
extension PackageResponseModelPatterns on PackageResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PackageResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PackageResponseModel() when $default != null:
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
case _PackageResponseModel() when $default != null:
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
case _PackageResponseModel():
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
case _PackageResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.priceBdt,_that.billingCycle,_that.features,_that.isCurrent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageResponseModel implements PackageResponseModel {
  const _PackageResponseModel({required this.id, required this.name, required this.priceBdt, required this.billingCycle, required final  List<String> features, this.isCurrent = false}): _features = features;
  factory _PackageResponseModel.fromJson(Map<String, dynamic> json) => _$PackageResponseModelFromJson(json);

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

/// Create a copy of PackageResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageResponseModelCopyWith<_PackageResponseModel> get copyWith => __$PackageResponseModelCopyWithImpl<_PackageResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.priceBdt, priceBdt) || other.priceBdt == priceBdt)&&(identical(other.billingCycle, billingCycle) || other.billingCycle == billingCycle)&&const DeepCollectionEquality().equals(other._features, _features)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,priceBdt,billingCycle,const DeepCollectionEquality().hash(_features),isCurrent);

@override
String toString() {
  return 'PackageResponseModel(id: $id, name: $name, priceBdt: $priceBdt, billingCycle: $billingCycle, features: $features, isCurrent: $isCurrent)';
}


}

/// @nodoc
abstract mixin class _$PackageResponseModelCopyWith<$Res> implements $PackageResponseModelCopyWith<$Res> {
  factory _$PackageResponseModelCopyWith(_PackageResponseModel value, $Res Function(_PackageResponseModel) _then) = __$PackageResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, double priceBdt, String billingCycle, List<String> features, bool isCurrent
});




}
/// @nodoc
class __$PackageResponseModelCopyWithImpl<$Res>
    implements _$PackageResponseModelCopyWith<$Res> {
  __$PackageResponseModelCopyWithImpl(this._self, this._then);

  final _PackageResponseModel _self;
  final $Res Function(_PackageResponseModel) _then;

/// Create a copy of PackageResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? priceBdt = null,Object? billingCycle = null,Object? features = null,Object? isCurrent = null,}) {
  return _then(_PackageResponseModel(
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
mixin _$PaymentResponseModel {

 String get id; DateTime get date; String get month; double get amountPaid; String get method; String get createdBy;
/// Create a copy of PaymentResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentResponseModelCopyWith<PaymentResponseModel> get copyWith => _$PaymentResponseModelCopyWithImpl<PaymentResponseModel>(this as PaymentResponseModel, _$identity);

  /// Serializes this PaymentResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.month, month) || other.month == month)&&(identical(other.amountPaid, amountPaid) || other.amountPaid == amountPaid)&&(identical(other.method, method) || other.method == method)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,month,amountPaid,method,createdBy);

@override
String toString() {
  return 'PaymentResponseModel(id: $id, date: $date, month: $month, amountPaid: $amountPaid, method: $method, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $PaymentResponseModelCopyWith<$Res>  {
  factory $PaymentResponseModelCopyWith(PaymentResponseModel value, $Res Function(PaymentResponseModel) _then) = _$PaymentResponseModelCopyWithImpl;
@useResult
$Res call({
 String id, DateTime date, String month, double amountPaid, String method, String createdBy
});




}
/// @nodoc
class _$PaymentResponseModelCopyWithImpl<$Res>
    implements $PaymentResponseModelCopyWith<$Res> {
  _$PaymentResponseModelCopyWithImpl(this._self, this._then);

  final PaymentResponseModel _self;
  final $Res Function(PaymentResponseModel) _then;

/// Create a copy of PaymentResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? date = null,Object? month = null,Object? amountPaid = null,Object? method = null,Object? createdBy = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,amountPaid: null == amountPaid ? _self.amountPaid : amountPaid // ignore: cast_nullable_to_non_nullable
as double,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentResponseModel].
extension PaymentResponseModelPatterns on PaymentResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime date,  String month,  double amountPaid,  String method,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime date,  String month,  double amountPaid,  String method,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _PaymentResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime date,  String month,  double amountPaid,  String method,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _PaymentResponseModel() when $default != null:
return $default(_that.id,_that.date,_that.month,_that.amountPaid,_that.method,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentResponseModel implements PaymentResponseModel {
  const _PaymentResponseModel({required this.id, required this.date, required this.month, required this.amountPaid, required this.method, required this.createdBy});
  factory _PaymentResponseModel.fromJson(Map<String, dynamic> json) => _$PaymentResponseModelFromJson(json);

@override final  String id;
@override final  DateTime date;
@override final  String month;
@override final  double amountPaid;
@override final  String method;
@override final  String createdBy;

/// Create a copy of PaymentResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentResponseModelCopyWith<_PaymentResponseModel> get copyWith => __$PaymentResponseModelCopyWithImpl<_PaymentResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.month, month) || other.month == month)&&(identical(other.amountPaid, amountPaid) || other.amountPaid == amountPaid)&&(identical(other.method, method) || other.method == method)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,month,amountPaid,method,createdBy);

@override
String toString() {
  return 'PaymentResponseModel(id: $id, date: $date, month: $month, amountPaid: $amountPaid, method: $method, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$PaymentResponseModelCopyWith<$Res> implements $PaymentResponseModelCopyWith<$Res> {
  factory _$PaymentResponseModelCopyWith(_PaymentResponseModel value, $Res Function(_PaymentResponseModel) _then) = __$PaymentResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime date, String month, double amountPaid, String method, String createdBy
});




}
/// @nodoc
class __$PaymentResponseModelCopyWithImpl<$Res>
    implements _$PaymentResponseModelCopyWith<$Res> {
  __$PaymentResponseModelCopyWithImpl(this._self, this._then);

  final _PaymentResponseModel _self;
  final $Res Function(_PaymentResponseModel) _then;

/// Create a copy of PaymentResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? month = null,Object? amountPaid = null,Object? method = null,Object? createdBy = null,}) {
  return _then(_PaymentResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,amountPaid: null == amountPaid ? _self.amountPaid : amountPaid // ignore: cast_nullable_to_non_nullable
as double,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TicketResponseModel {

 String get id; DateTime get date; String get type; String get issue; String get status; String get createdBy;
/// Create a copy of TicketResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketResponseModelCopyWith<TicketResponseModel> get copyWith => _$TicketResponseModelCopyWithImpl<TicketResponseModel>(this as TicketResponseModel, _$identity);

  /// Serializes this TicketResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.type, type) || other.type == type)&&(identical(other.issue, issue) || other.issue == issue)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,type,issue,status,createdBy);

@override
String toString() {
  return 'TicketResponseModel(id: $id, date: $date, type: $type, issue: $issue, status: $status, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $TicketResponseModelCopyWith<$Res>  {
  factory $TicketResponseModelCopyWith(TicketResponseModel value, $Res Function(TicketResponseModel) _then) = _$TicketResponseModelCopyWithImpl;
@useResult
$Res call({
 String id, DateTime date, String type, String issue, String status, String createdBy
});




}
/// @nodoc
class _$TicketResponseModelCopyWithImpl<$Res>
    implements $TicketResponseModelCopyWith<$Res> {
  _$TicketResponseModelCopyWithImpl(this._self, this._then);

  final TicketResponseModel _self;
  final $Res Function(TicketResponseModel) _then;

/// Create a copy of TicketResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? date = null,Object? type = null,Object? issue = null,Object? status = null,Object? createdBy = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,issue: null == issue ? _self.issue : issue // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketResponseModel].
extension TicketResponseModelPatterns on TicketResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _TicketResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _TicketResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime date,  String type,  String issue,  String status,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime date,  String type,  String issue,  String status,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _TicketResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime date,  String type,  String issue,  String status,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _TicketResponseModel() when $default != null:
return $default(_that.id,_that.date,_that.type,_that.issue,_that.status,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketResponseModel implements TicketResponseModel {
  const _TicketResponseModel({required this.id, required this.date, required this.type, required this.issue, required this.status, required this.createdBy});
  factory _TicketResponseModel.fromJson(Map<String, dynamic> json) => _$TicketResponseModelFromJson(json);

@override final  String id;
@override final  DateTime date;
@override final  String type;
@override final  String issue;
@override final  String status;
@override final  String createdBy;

/// Create a copy of TicketResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketResponseModelCopyWith<_TicketResponseModel> get copyWith => __$TicketResponseModelCopyWithImpl<_TicketResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.type, type) || other.type == type)&&(identical(other.issue, issue) || other.issue == issue)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,type,issue,status,createdBy);

@override
String toString() {
  return 'TicketResponseModel(id: $id, date: $date, type: $type, issue: $issue, status: $status, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$TicketResponseModelCopyWith<$Res> implements $TicketResponseModelCopyWith<$Res> {
  factory _$TicketResponseModelCopyWith(_TicketResponseModel value, $Res Function(_TicketResponseModel) _then) = __$TicketResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime date, String type, String issue, String status, String createdBy
});




}
/// @nodoc
class __$TicketResponseModelCopyWithImpl<$Res>
    implements _$TicketResponseModelCopyWith<$Res> {
  __$TicketResponseModelCopyWithImpl(this._self, this._then);

  final _TicketResponseModel _self;
  final $Res Function(_TicketResponseModel) _then;

/// Create a copy of TicketResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? type = null,Object? issue = null,Object? status = null,Object? createdBy = null,}) {
  return _then(_TicketResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,issue: null == issue ? _self.issue : issue // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MediaCategoryResponseModel {

 String get id; String get type; String get name; int get itemCount;
/// Create a copy of MediaCategoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaCategoryResponseModelCopyWith<MediaCategoryResponseModel> get copyWith => _$MediaCategoryResponseModelCopyWithImpl<MediaCategoryResponseModel>(this as MediaCategoryResponseModel, _$identity);

  /// Serializes this MediaCategoryResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaCategoryResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,name,itemCount);

@override
String toString() {
  return 'MediaCategoryResponseModel(id: $id, type: $type, name: $name, itemCount: $itemCount)';
}


}

/// @nodoc
abstract mixin class $MediaCategoryResponseModelCopyWith<$Res>  {
  factory $MediaCategoryResponseModelCopyWith(MediaCategoryResponseModel value, $Res Function(MediaCategoryResponseModel) _then) = _$MediaCategoryResponseModelCopyWithImpl;
@useResult
$Res call({
 String id, String type, String name, int itemCount
});




}
/// @nodoc
class _$MediaCategoryResponseModelCopyWithImpl<$Res>
    implements $MediaCategoryResponseModelCopyWith<$Res> {
  _$MediaCategoryResponseModelCopyWithImpl(this._self, this._then);

  final MediaCategoryResponseModel _self;
  final $Res Function(MediaCategoryResponseModel) _then;

/// Create a copy of MediaCategoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? name = null,Object? itemCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaCategoryResponseModel].
extension MediaCategoryResponseModelPatterns on MediaCategoryResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaCategoryResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaCategoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaCategoryResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _MediaCategoryResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaCategoryResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _MediaCategoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  String name,  int itemCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaCategoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  String name,  int itemCount)  $default,) {final _that = this;
switch (_that) {
case _MediaCategoryResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  String name,  int itemCount)?  $default,) {final _that = this;
switch (_that) {
case _MediaCategoryResponseModel() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.itemCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaCategoryResponseModel implements MediaCategoryResponseModel {
  const _MediaCategoryResponseModel({required this.id, required this.type, required this.name, required this.itemCount});
  factory _MediaCategoryResponseModel.fromJson(Map<String, dynamic> json) => _$MediaCategoryResponseModelFromJson(json);

@override final  String id;
@override final  String type;
@override final  String name;
@override final  int itemCount;

/// Create a copy of MediaCategoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaCategoryResponseModelCopyWith<_MediaCategoryResponseModel> get copyWith => __$MediaCategoryResponseModelCopyWithImpl<_MediaCategoryResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaCategoryResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaCategoryResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,name,itemCount);

@override
String toString() {
  return 'MediaCategoryResponseModel(id: $id, type: $type, name: $name, itemCount: $itemCount)';
}


}

/// @nodoc
abstract mixin class _$MediaCategoryResponseModelCopyWith<$Res> implements $MediaCategoryResponseModelCopyWith<$Res> {
  factory _$MediaCategoryResponseModelCopyWith(_MediaCategoryResponseModel value, $Res Function(_MediaCategoryResponseModel) _then) = __$MediaCategoryResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, String name, int itemCount
});




}
/// @nodoc
class __$MediaCategoryResponseModelCopyWithImpl<$Res>
    implements _$MediaCategoryResponseModelCopyWith<$Res> {
  __$MediaCategoryResponseModelCopyWithImpl(this._self, this._then);

  final _MediaCategoryResponseModel _self;
  final $Res Function(_MediaCategoryResponseModel) _then;

/// Create a copy of MediaCategoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? name = null,Object? itemCount = null,}) {
  return _then(_MediaCategoryResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$MediaItemResponseModel {

 String get id; String get categoryId; String get name; String get description;
/// Create a copy of MediaItemResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaItemResponseModelCopyWith<MediaItemResponseModel> get copyWith => _$MediaItemResponseModelCopyWithImpl<MediaItemResponseModel>(this as MediaItemResponseModel, _$identity);

  /// Serializes this MediaItemResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaItemResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,categoryId,name,description);

@override
String toString() {
  return 'MediaItemResponseModel(id: $id, categoryId: $categoryId, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $MediaItemResponseModelCopyWith<$Res>  {
  factory $MediaItemResponseModelCopyWith(MediaItemResponseModel value, $Res Function(MediaItemResponseModel) _then) = _$MediaItemResponseModelCopyWithImpl;
@useResult
$Res call({
 String id, String categoryId, String name, String description
});




}
/// @nodoc
class _$MediaItemResponseModelCopyWithImpl<$Res>
    implements $MediaItemResponseModelCopyWith<$Res> {
  _$MediaItemResponseModelCopyWithImpl(this._self, this._then);

  final MediaItemResponseModel _self;
  final $Res Function(MediaItemResponseModel) _then;

/// Create a copy of MediaItemResponseModel
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


/// Adds pattern-matching-related methods to [MediaItemResponseModel].
extension MediaItemResponseModelPatterns on MediaItemResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaItemResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaItemResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaItemResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _MediaItemResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaItemResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _MediaItemResponseModel() when $default != null:
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
case _MediaItemResponseModel() when $default != null:
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
case _MediaItemResponseModel():
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
case _MediaItemResponseModel() when $default != null:
return $default(_that.id,_that.categoryId,_that.name,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaItemResponseModel implements MediaItemResponseModel {
  const _MediaItemResponseModel({required this.id, required this.categoryId, required this.name, required this.description});
  factory _MediaItemResponseModel.fromJson(Map<String, dynamic> json) => _$MediaItemResponseModelFromJson(json);

@override final  String id;
@override final  String categoryId;
@override final  String name;
@override final  String description;

/// Create a copy of MediaItemResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaItemResponseModelCopyWith<_MediaItemResponseModel> get copyWith => __$MediaItemResponseModelCopyWithImpl<_MediaItemResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaItemResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaItemResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,categoryId,name,description);

@override
String toString() {
  return 'MediaItemResponseModel(id: $id, categoryId: $categoryId, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$MediaItemResponseModelCopyWith<$Res> implements $MediaItemResponseModelCopyWith<$Res> {
  factory _$MediaItemResponseModelCopyWith(_MediaItemResponseModel value, $Res Function(_MediaItemResponseModel) _then) = __$MediaItemResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String categoryId, String name, String description
});




}
/// @nodoc
class __$MediaItemResponseModelCopyWithImpl<$Res>
    implements _$MediaItemResponseModelCopyWith<$Res> {
  __$MediaItemResponseModelCopyWithImpl(this._self, this._then);

  final _MediaItemResponseModel _self;
  final $Res Function(_MediaItemResponseModel) _then;

/// Create a copy of MediaItemResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? categoryId = null,Object? name = null,Object? description = null,}) {
  return _then(_MediaItemResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
