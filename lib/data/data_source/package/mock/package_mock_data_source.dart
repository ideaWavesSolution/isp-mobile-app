import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/data/data_source/package/package_data_source.dart';
import 'package:isp_mobile_app/data/models/request_model/base/base_request.dart';
import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';

@LazySingleton()
class PackageMockDataSource implements PackageDataSource {
  static const _features = [
    'Unlimited Internet',
    '4K Streaming',
    'Online Gaming Optimized',
    'Live TV & IPTV',
    'Low-Latency Gaming',
    '24/7 Helpdesk',
  ];

  /// Currently-selected package id, keyed by connection id, so each ISP
  /// line/connection can be on a different tier.
  final Map<String, String> _currentPackageIdByConnection = {
    'home': '20mb',
    'office': '10mb',
    'shop': '4mb',
  };

  final List<PackageResponseModel> _packages = const [
    PackageResponseModel(
      id: '4mb',
      name: '4MB',
      priceBdt: 400,
      billingCycle: 'Month',
      features: _features,
    ),
    PackageResponseModel(
      id: '10mb',
      name: '10MB',
      priceBdt: 530,
      billingCycle: 'Month',
      features: _features,
    ),
    PackageResponseModel(
      id: '20mb',
      name: '20MB',
      priceBdt: 500,
      billingCycle: 'Month',
      features: _features,
    ),
    PackageResponseModel(
      id: '30mb',
      name: '30MB',
      priceBdt: 700,
      billingCycle: 'Month',
      features: _features,
    ),
    PackageResponseModel(
      id: '35mb',
      name: '35MB',
      priceBdt: 800,
      billingCycle: 'Month',
      features: _features,
    ),
    PackageResponseModel(
      id: '15mb-new',
      name: '15MB-NEW',
      priceBdt: 550,
      billingCycle: 'Month',
      features: _features,
    ),
    PackageResponseModel(
      id: '25mb-int-new-pkg',
      name: '25MB-INT-NEW-PKG',
      priceBdt: 900,
      billingCycle: 'Month',
      features: _features,
    ),
    PackageResponseModel(
      id: '40mb-int-new-pkg',
      name: '40MB-INT-NEW-PKG',
      priceBdt: 1200,
      billingCycle: 'Month',
      features: _features,
    ),
    PackageResponseModel(
      id: '50mb-int-new-pkg',
      name: '50MB-INT-NEW-PKG',
      priceBdt: 1500,
      billingCycle: 'Month',
      features: _features,
    ),
    PackageResponseModel(
      id: '70mb-int-new-pkg',
      name: '70MB-INT-NEW-PKG',
      priceBdt: 1800,
      billingCycle: 'Month',
      features: _features,
    ),
    PackageResponseModel(
      id: '80mb-int-new-pkg',
      name: '80MB-INT-NEW-PKG',
      priceBdt: 2000,
      billingCycle: 'Month',
      features: _features,
    ),
    PackageResponseModel(
      id: '100mb-int-new-pkg',
      name: '100MB-INT-NEW-PKG',
      priceBdt: 2500,
      billingCycle: 'Month',
      features: _features,
    ),
  ];

  @override
  Future<List<PackageResponseModel>> getPackages({
    required String connectionId,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final currentId = _currentPackageIdByConnection[connectionId];
    return _packages
        .map((p) => p.copyWith(isCurrent: p.id == currentId))
        .toList();
  }

  /// Synchronously exposes the currently-selected package for a connection
  /// so other mock data sources (e.g. the connections list) can stay
  /// consistent with it.
  PackageResponseModel getCurrentPackage(String connectionId) {
    final currentId = _currentPackageIdByConnection[connectionId];
    return _packages.firstWhere(
      (p) => p.id == currentId,
      orElse: () => _packages.first,
    );
  }

  @override
  Future<void> changePackage(ChangePackageRequestModel inputModel) async {
    await Future.delayed(const Duration(milliseconds: 700));
    if (_packages.every((p) => p.id != inputModel.packageId)) {
      throw Exception('Unknown package: ${inputModel.packageId}');
    }
    _currentPackageIdByConnection[inputModel.connectionId] =
        inputModel.packageId;
  }
}
