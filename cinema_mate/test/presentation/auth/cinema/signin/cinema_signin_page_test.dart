import 'package:cinema_mate/presentation/auth/cinema/signin/cinema_signin_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('cinema signin page ...', (tester) async {
    await tester.pumpWidget(
      const Scaffold(
        body: CinemaSignInForm(),
      ),
    );
    await tester.pump();
  });
}
