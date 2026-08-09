import 'package:isp_mobile_app/core/env/app_environment.dart';
import 'package:isp_mobile_app/core/env/env.dart';

class StagingConfig extends Env {
  @override
  String name = AppEnvironment.staging;
  @override
  String baseUrl = 'https://jsonplaceholder.typicode.com';
}
