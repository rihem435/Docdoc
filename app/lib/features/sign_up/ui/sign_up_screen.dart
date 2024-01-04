import 'package:app/core/helpers/spacing.dart';
import 'package:app/core/theming/styles.dart';
import 'package:app/core/widgets/app_text_button.dart';
import 'package:app/features/sign_up/logic/signup_cubit.dart';
import 'package:app/features/sign_up/ui/widgets/already_have_account_text.dart';
import 'package:app/features/sign_up/ui/widgets/sign_up_form.dart';
import 'package:app/features/sign_up/ui/widgets/sign_up_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 30.w),
          child: Column(children: [
            Text(
              "Create Account",
              style: TextStyles.font24BlueBold,
            ),
            verticalSpace(8),
            Text(
              "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
              style: TextStyles.font14GreyRegular.copyWith(height: 1.5.h),
            ),
            verticalSpace(36),
            const SignUpForm(),
             verticalSpace(15),
            AppTextButton(
              text: "Create Account",
              textStyle: TextStyles.font16WhiteSemiBold,
              onPressed: () {
                validateThenDoSignUp(context);
              },
            ),
            verticalSpace(15),
            const AlreadyHaveAccountText(),
            const SignUpListener()
          ]),
        ),
      )),
    );
  }

  void validateThenDoSignUp(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignUpStates();
    }
  }
}
