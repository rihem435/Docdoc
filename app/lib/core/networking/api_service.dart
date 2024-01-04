import 'package:app/core/networking/api_constants.dart';
import 'package:app/features/login/data/models/login_request_body.dart';
import 'package:app/features/login/data/models/login_response.dart';
import 'package:app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:app/features/sign_up/data/models/sign_up_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.loginUrl)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signUpUrl)
  Future<SignUpResponse> signUp(
    @Body() SignUpRequestBody signUpRequestBody,
  );
}
