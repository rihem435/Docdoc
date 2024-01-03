import 'package:app/core/helpers/extension.dart';
import 'package:app/core/routing/app_router.dart';
import 'package:app/core/routing/routes.dart';
import 'package:app/core/theming/app_colors.dart';
import 'package:app/core/theming/styles.dart';
import 'package:app/features/home/ui/home_screen.dart';
import 'package:app/features/login/logic/cubit/login_cubit.dart';
import 'package:app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.blue,
                ),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            setUpErrorState(context, error);
   
   
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setUpErrorState(BuildContext context, String error) {
     context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: Icon(
          Icons.error,
          color: Colors.red,
        ),
        content: Text(
          error,
          style: TextStyles.font15EerieDarkMeduim,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14BlueSemiBold,
            ),
          )
        ],
      ),
    );
       
       
  }
}
