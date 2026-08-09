import 'package:isp_mobile_app/core/env/app_environment.dart';
import 'package:isp_mobile_app/core/env/env.dart';

class DevelopmentConfig extends Env {
  @override
  String name = AppEnvironment.development;
  @override
  String baseUrl = 'https://jsonplaceholder.typicode.com';
}
