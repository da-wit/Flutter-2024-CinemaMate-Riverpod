import 'package:cinema_mate/presentation/core/signin/signin_form.dart';
import 'package:flutter/material.dart';
import 'package:cinema_mate/presentation/core/widgets/app_color.dart';

var newColor = AppColor();

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              newColor.bg,
              newColor.bg,
              newColor.gradiantColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const SignInForm(),
      ),
    );
  }
}
