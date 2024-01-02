import 'package:app/core/helpers/spacing.dart';
import 'package:app/core/theming/styles.dart';
import 'package:app/core/widgets/app_text_button.dart';
import 'package:app/core/widgets/app_text_form_field.dart';
import 'package:app/features/login/widgets/already_have_account_text.dart';
import 'package:app/features/login/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(8),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: TextStyles.font14GreyRegular.copyWith(height: 1.5.h),
              ),
              verticalSpace(36),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    AppTextFormField(
                      hintText: "Email",
                    ),
                    verticalSpace(18),
                    AppTextFormField(
                      hintText: "Password",
                      isObscureText: isObscureText,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        child: Icon(
                          isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    verticalSpace(16),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyles.font12BlueRegular,
                      ),
                    ),
                    verticalSpace(32),
                    AppTextButton(
                      text: "Login",
                      onPressed: () {},
                      textStyle: TextStyles.font16WhiteSemiBold,
                    ),
                    verticalSpace(100),
                    TermsAndConditionsText(),
                    verticalSpace(24),
                    const AlreadyHaveAccountText(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
