import 'package:app/core/helpers/app_regex.dart';
import 'package:app/core/helpers/spacing.dart';
import 'package:app/core/widgets/app_text_form_field.dart';
import 'package:app/features/login/widgets/password_validations.dart';
import 'package:app/features/sign_up/logic/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isObscureText = true;
  bool isConfirmPasswordObscureText = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    //methode pour faire appel au passwordController
    passwordController = context.read<SignupCubit>().passwordController;
    setUpPasswordControllerListnener();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(children: [
        AppTextFormField(
            hintText: "Name",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a name";
              }
            },
            controller: context.read<SignupCubit>().nameController),
        verticalSpace(18),
        AppTextFormField(
            hintText: "Phone Number",
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  AppRegex.isPhoneNumberValid(value)) {
                return "Please enter a valid phone number ";
              }
            },
            controller: context.read<SignupCubit>().phoneController),
        verticalSpace(18),
        AppTextFormField(
          hintText: "Email",
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                !AppRegex.isEmailValid(value)) {
              return "Please enter a valid email";
            }
          },
          controller: context.read<SignupCubit>().emailController,
        ),
        verticalSpace(18),
        AppTextFormField(
          hintText: "Password",
          controller: context.read<SignupCubit>().passwordController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter a valid password";
            }
          },
          isObscureText: isObscureText,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isObscureText = !isObscureText;
              });
            },
            child: Icon(
              isObscureText ? Icons.visibility_off : Icons.visibility,
            ),
          ),
        ),
        verticalSpace(18),
        AppTextFormField(
          hintText: "Password Confirmation",
          controller:
              context.read<SignupCubit>().passwordConfirmationController,
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                (value != passwordController.text)) {
              return "Please enter a valid confirm password";
            }
          },
          isObscureText: isConfirmPasswordObscureText,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isConfirmPasswordObscureText = !isConfirmPasswordObscureText;
              });
            },
            child: Icon(
              isConfirmPasswordObscureText
                  ? Icons.visibility_off
                  : Icons.visibility,
            ),
          ),
        ),
        verticalSpace(16),
        PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength)
      ]),
    );
  }

  void setUpPasswordControllerListnener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
      });
    });
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
