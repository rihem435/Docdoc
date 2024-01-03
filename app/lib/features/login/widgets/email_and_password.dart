import 'package:app/core/helpers/app_regex.dart';
import 'package:app/core/helpers/spacing.dart';
import 'package:app/core/widgets/app_text_form_field.dart';
import 'package:app/features/login/logic/cubit/login_cubit.dart';
import 'package:app/features/login/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({Key? key}) : super(key: key);

  @override
  _EmailAndPasswordState createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;
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
    passwordController = context.read<LoginCubit>().passwordController;
    setUpPasswordControllerListnener();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(children: [
        AppTextFormField(
          hintText: "Email",
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                !AppRegex.isEmailValid(value)) {
              return "Please enter a valid email";
            }
          },
          controller: context.read<LoginCubit>().emailController,
        ),
        verticalSpace(18),
        AppTextFormField(
          hintText: "Password",
          controller: context.read<LoginCubit>().passwordController,
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
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
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
