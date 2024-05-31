import 'package:cinema_mate/presentation/core/registration/registration_page_widget.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: RegistrationPageWidget(),
      ),
    );
  }
}
