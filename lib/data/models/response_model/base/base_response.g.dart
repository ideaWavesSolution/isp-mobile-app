// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerResponseModel _$CustomerResponseModelFromJson(
  Map<String, dynamic> json,
) => _CustomerResponseModel(
  id: json['id'] as String,
  name: json['name'] as String,
  username: json['username'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$CustomerResponseModelToJson(
  _CustomerResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'username': instance.username,
  'status': instance.status,
};

_ConnectionResponseModel _$ConnectionResponseModelFromJson(
  Map<String, dynamic> json,
) => _ConnectionResponseModel(
  id: json['id'] as String,
  name: json['name'] as String,
  ip: json['ip'] as String,
  status: json['status'] as String,
  packageName: json['packageName'] as String,
  monthlyBill: (json['monthlyBill'] as num).toDouble(),
  balanceDue: (json['balanceDue'] as num).toDouble(),
  expireDate: DateTime.parse(json['expireDate'] as String),
  uploadBytes: (json['uploadBytes'] as num).toDouble(),
  downloadBytes: (json['downloadBytes'] as num).toDouble(),
  uptimeSeconds: (json['uptimeSeconds'] as num).toInt(),
);

Map<String, dynamic> _$ConnectionResponseModelToJson(
  _ConnectionResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'ip': instance.ip,
  'status': instance.status,
  'packageName': instance.packageName,
  'monthlyBill': instance.monthlyBill,
  'balanceDue': instance.balanceDue,
  'expireDate': instance.expireDate.toIso8601String(),
  'uploadBytes': instance.uploadBytes,
  'downloadBytes': instance.downloadBytes,
  'uptimeSeconds': instance.uptimeSeconds,
};

_BandwidthPointResponseModel _$BandwidthPointResponseModelFromJson(
  Map<String, dynamic> json,
) => _BandwidthPointResponseModel(
  time: DateTime.parse(json['time'] as String),
  rxBytes: (json['rxBytes'] as num).toDouble(),
  txBytes: (json['txBytes'] as num).toDouble(),
);

Map<String, dynamic> _$BandwidthPointResponseModelToJson(
  _BandwidthPointResponseModel instance,
) => <String, dynamic>{
  'time': instance.time.toIso8601String(),
  'rxBytes': instance.rxBytes,
  'txBytes': instance.txBytes,
};

_PackageResponseModel _$PackageResponseModelFromJson(
  Map<String, dynamic> json,
) => _PackageResponseModel(
  id: json['id'] as String,
  name: json['name'] as String,
  priceBdt: (json['priceBdt'] as num).toDouble(),
  billingCycle: json['billingCycle'] as String,
  features: (json['features'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  isCurrent: json['isCurrent'] as bool? ?? false,
);

Map<String, dynamic> _$PackageResponseModelToJson(
  _PackageResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'priceBdt': instance.priceBdt,
  'billingCycle': instance.billingCycle,
  'features': instance.features,
  'isCurrent': instance.isCurrent,
};

_PaymentResponseModel _$PaymentResponseModelFromJson(
  Map<String, dynamic> json,
) => _PaymentResponseModel(
  id: json['id'] as String,
  date: DateTime.parse(json['date'] as String),
  month: json['month'] as String,
  amountPaid: (json['amountPaid'] as num).toDouble(),
  method: json['method'] as String,
  createdBy: json['createdBy'] as String,
);

Map<String, dynamic> _$PaymentResponseModelToJson(
  _PaymentResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'date': instance.date.toIso8601String(),
  'month': instance.month,
  'amountPaid': instance.amountPaid,
  'method': instance.method,
  'createdBy': instance.createdBy,
};

_TicketResponseModel _$TicketResponseModelFromJson(Map<String, dynamic> json) =>
    _TicketResponseModel(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      type: json['type'] as String,
      issue: json['issue'] as String,
      status: json['status'] as String,
      createdBy: json['createdBy'] as String,
    );

Map<String, dynamic> _$TicketResponseModelToJson(
  _TicketResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'date': instance.date.toIso8601String(),
  'type': instance.type,
  'issue': instance.issue,
  'status': instance.status,
  'createdBy': instance.createdBy,
};

_MediaCategoryResponseModel _$MediaCategoryResponseModelFromJson(
  Map<String, dynamic> json,
) => _MediaCategoryResponseModel(
  id: json['id'] as String,
  type: json['type'] as String,
  name: json['name'] as String,
  itemCount: (json['itemCount'] as num).toInt(),
);

Map<String, dynamic> _$MediaCategoryResponseModelToJson(
  _MediaCategoryResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'name': instance.name,
  'itemCount': instance.itemCount,
};

_MediaItemResponseModel _$MediaItemResponseModelFromJson(
  Map<String, dynamic> json,
) => _MediaItemResponseModel(
  id: json['id'] as String,
  categoryId: json['categoryId'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$MediaItemResponseModelToJson(
  _MediaItemResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'categoryId': instance.categoryId,
  'name': instance.name,
  'description': instance.description,
};
