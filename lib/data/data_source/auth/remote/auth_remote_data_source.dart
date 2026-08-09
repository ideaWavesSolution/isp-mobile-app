import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:isp_mobile_app/data/data_source/auth/auth_data_source.dart';
import 'package:isp_mobile_app/data/models/request_model/base/base_request.dart';
import 'package:isp_mobile_app/domain/enum/dio_client_type.dart';

part 'auth_remote_data_source.g.dart';

@RestApi()
@LazySingleton()
abstract class AuthRemoteDataSource implements AuthDataSource {
  @factoryMethod
  factory AuthRemoteDataSource(@Named(DioClientType.unauthenticated) Dio dio) =
      _AuthRemoteDataSource;

  @override
  @POST('/login')
  Future<String> login(@Body() LoginRequestModel inputModel);

  @override
  @POST('/register')
  Future<void> register(@Body() RegisterRequestModel inputModel);
}
