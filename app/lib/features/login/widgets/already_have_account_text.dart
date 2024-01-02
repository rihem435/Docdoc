import 'package:app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
            text: "Already have an account yet? ",
            style: TextStyles.font11BlackSemiBold,
          ),
          TextSpan(
            text: "Sign Up",
            style: TextStyles.font11CyanBlueSemiBold,
          ),
        ],),);
  }
}
