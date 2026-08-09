// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginRequestModel _$LoginRequestModelFromJson(Map<String, dynamic> json) =>
    _LoginRequestModel(
      ip: json['ip'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginRequestModelToJson(_LoginRequestModel instance) =>
    <String, dynamic>{'ip': instance.ip, 'password': instance.password};

_RegisterRequestModel _$RegisterRequestModelFromJson(
  Map<String, dynamic> json,
) => _RegisterRequestModel(
  fullName: json['fullName'] as String,
  phone: json['phone'] as String,
  address: json['address'] as String,
  packageInterest: json['packageInterest'] as String,
);

Map<String, dynamic> _$RegisterRequestModelToJson(
  _RegisterRequestModel instance,
) => <String, dynamic>{
  'fullName': instance.fullName,
  'phone': instance.phone,
  'address': instance.address,
  'packageInterest': instance.packageInterest,
};

_ChangePackageRequestModel _$ChangePackageRequestModelFromJson(
  Map<String, dynamic> json,
) => _ChangePackageRequestModel(
  connectionId: json['connectionId'] as String,
  packageId: json['packageId'] as String,
);

Map<String, dynamic> _$ChangePackageRequestModelToJson(
  _ChangePackageRequestModel instance,
) => <String, dynamic>{
  'connectionId': instance.connectionId,
  'packageId': instance.packageId,
};

_MakePaymentRequestModel _$MakePaymentRequestModelFromJson(
  Map<String, dynamic> json,
) => _MakePaymentRequestModel(
  amount: (json['amount'] as num).toDouble(),
  method: json['method'] as String,
);

Map<String, dynamic> _$MakePaymentRequestModelToJson(
  _MakePaymentRequestModel instance,
) => <String, dynamic>{'amount': instance.amount, 'method': instance.method};

_CreateTicketRequestModel _$CreateTicketRequestModelFromJson(
  Map<String, dynamic> json,
) => _CreateTicketRequestModel(
  type: json['type'] as String,
  issue: json['issue'] as String,
);

Map<String, dynamic> _$CreateTicketRequestModelToJson(
  _CreateTicketRequestModel instance,
) => <String, dynamic>{'type': instance.type, 'issue': instance.issue};
