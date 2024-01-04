import 'package:app/core/helpers/extension.dart';
import 'package:app/core/routing/routes.dart';
import 'package:app/core/theming/app_colors.dart';
import 'package:app/core/theming/styles.dart';
import 'package:app/features/sign_up/logic/signup_cubit.dart';
import 'package:app/features/sign_up/logic/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpListener extends StatelessWidget {
  const SignUpListener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is SignUpLoading ||
          current is SignUpSuccess ||
          current is SignUpError,
      listener: (context, state) {
        state.whenOrNull(
          signUpLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.blue,
                ),
              ),
            );
          },
          signUpSuccess: (data) {
            context.pop();
            showSuccessDialog(context);
          },
          signUpError: (error) {
            setUpErrorState(context, error);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("SignUp Successful"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Congratulations, you have signed up successfully!"),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                context.pushNamed(Routes.loginScreen);
              },
              child: const Text('Continue'),
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                  onSurface: Colors.grey),
            )
          ],
        );
      },
    );
  }

  void setUpErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: const Icon(
            Icons.error,
            color: Colors.red,
            size: 32,
          ),
          content: Text(
            error,
            style: TextStyles.font14EerieBlackMedium,
          ),
          actions: [
            TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text(
                  "Go it",
                  style: TextStyles.font14BlueSemiBold,
                ))
          ],
        );
      },
    );
  }
}
