import 'package:app/core/helpers/extension.dart';
import 'package:app/core/routing/routes.dart';
import 'package:app/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account?",
            style: TextStyles.font13BlackSemiBold,
          ),
          TextSpan(
              text: " Login",
              style: TextStyles.font13CyanBlueSemiBold,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushNamed(Routes.loginScreen);
                }),
        ],
      ),
    );
  }
}
