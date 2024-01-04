import 'package:app/core/networking/api_error_handler.dart';
import 'package:app/core/networking/api_result.dart';
import 'package:app/core/networking/api_service.dart';
import 'package:app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:app/features/sign_up/data/models/sign_up_response.dart';

class SignUpRepository {
  final ApiService _apiService;

  SignUpRepository({required ApiService apiService}) : _apiService = apiService;
  Future<ApiResult<SignUpResponse>> signUp(
      SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiService.signUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
