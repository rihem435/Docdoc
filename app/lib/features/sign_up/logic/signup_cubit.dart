import 'package:app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:app/features/sign_up/data/repository/sign_up_repository.dart';
import 'package:app/features/sign_up/logic/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignUpState> {
  final SignUpRepository _signUpRepository;
  SignupCubit(this._signUpRepository) : super(const SignUpState.initial());


  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
      
  void emitSignUpStates() async {
    emit(const SignUpState.signUpLoading());
    final response = await _signUpRepository.signUp(SignUpRequestBody(
        name: nameController.text.trim(),
        email: emailController.text.trim(),
        phone: phoneController.text.trim(),
        password: passwordController.text.trim(),
        passwordConfirmation: passwordConfirmationController.text.trim(),
        gender: 0));
    response.when(
      success: (signUpResponse) =>
          emit(SignUpState.signUpSuccess(signUpResponse)),
      failure: (errorHandler) => emit(SignUpState.signUpError(
          error: errorHandler.apiErrorModel.message ?? "")),
    );
  }
}
