import 'dart:async';
import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/data/data_source/customer/customer_data_source.dart';
import 'package:isp_mobile_app/data/data_source/package/mock/package_mock_data_source.dart';
import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';

@LazySingleton()
class CustomerMockDataSource implements CustomerDataSource {
  CustomerMockDataSource(this._packageMock);

  final PackageMockDataSource _packageMock;

  static const _mbToBytes = 1024 * 1024;
  static const _gbToBytes = 1024 * 1024 * 1024;

  final _random = Random();

  @override
  Future<CustomerResponseModel> getProfile() async {
    await Future.delayed(const Duration(milliseconds: 400));
    return const CustomerResponseModel(
      id: 'IW1001',
      name: 'Nafiz',
      username: 'IW1001',
      status: 'active',
    );
  }

  @override
  Future<List<ConnectionResponseModel>> getConnections() async {
    await Future.delayed(const Duration(milliseconds: 400));

    ConnectionResponseModel build({
      required String id,
      required String name,
      required String ip,
      required String status,
      required DateTime expireDate,
      required double uploadGb,
      required double downloadGb,
      required Duration uptime,
    }) {
      final currentPackage = _packageMock.getCurrentPackage(id);
      return ConnectionResponseModel(
        id: id,
        name: name,
        ip: ip,
        status: status,
        packageName: currentPackage.name,
        monthlyBill: currentPackage.priceBdt,
        balanceDue: currentPackage.priceBdt,
        expireDate: expireDate,
        uploadBytes: uploadGb * _gbToBytes,
        downloadBytes: downloadGb * _gbToBytes,
        uptimeSeconds: uptime.inSeconds,
      );
    }

    return [
      build(
        id: 'home',
        name: 'Home Connection',
        ip: '103.198.22.10',
        status: 'active',
        expireDate: DateTime(2026, 8, 12),
        uploadGb: 7.41,
        downloadGb: 282.04,
        uptime: const Duration(days: 1, hours: 2, minutes: 42, seconds: 24),
      ),
      build(
        id: 'office',
        name: 'Office Connection',
        ip: '103.198.22.45',
        status: 'active',
        expireDate: DateTime(2026, 9, 5),
        uploadGb: 3.2,
        downloadGb: 128.5,
        uptime: const Duration(hours: 5, minutes: 12, seconds: 8),
      ),
      build(
        id: 'shop',
        name: 'Shop Connection',
        ip: '103.198.22.78',
        status: 'inactive',
        expireDate: DateTime(2026, 7, 20),
        uploadGb: 0.5,
        downloadGb: 12.1,
        uptime: Duration.zero,
      ),
    ];
  }

  @override
  Stream<List<BandwidthPointResponseModel>> watchBandwidthUsage(
    String connectionId,
  ) {
    late final StreamController<List<BandwidthPointResponseModel>> controller;
    Timer? timer;
    final points = <BandwidthPointResponseModel>[];

    void seed() {
      points.clear();
      final now = DateTime.now();
      // Seed a short recent history so the chart isn't empty on first frame.
      for (var i = 7; i >= 0; i--) {
        points.add(
          BandwidthPointResponseModel(
            time: now.subtract(Duration(seconds: i * 3)),
            rxBytes: _randomRx(),
            txBytes: _randomTx(),
          ),
        );
      }
    }

    void tick() {
      points.add(
        BandwidthPointResponseModel(
          time: DateTime.now(),
          rxBytes: _randomRx(),
          txBytes: _randomTx(),
        ),
      );
      if (points.length > 12) {
        points.removeAt(0);
      }
      controller.add(List.unmodifiable(points));
    }

    controller = StreamController<List<BandwidthPointResponseModel>>(
      onListen: () {
        seed();
        controller.add(List.unmodifiable(points));
        timer = Timer.periodic(const Duration(seconds: 2), (_) => tick());
      },
      onCancel: () {
        timer?.cancel();
      },
    );

    return controller.stream;
  }

  double _randomRx() => (_random.nextDouble() * 3) * _mbToBytes;

  double _randomTx() => (_random.nextDouble() * 22 + 1) * _mbToBytes;
}
