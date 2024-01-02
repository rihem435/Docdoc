import 'package:app/core/networking/api_constants.dart';
import 'package:app/features/login/data/models/login_request_body.dart';
import 'package:app/features/login/data/models/login_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.loginUrl)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
