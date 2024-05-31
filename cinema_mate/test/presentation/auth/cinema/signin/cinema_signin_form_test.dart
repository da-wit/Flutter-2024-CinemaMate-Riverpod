import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cinema_mate/injection.dart';
import 'package:cinema_mate/presentation/auth/cinema/signin/cinema_signin_form.dart';
import 'package:injectable/injectable.dart';

void main() {
  setUpAll(() {
    configureInjection(
        Environment.test); // Ensure GetIt is set up before running tests
  });

  testWidgets('CinemaSignInForm displays "Sign in to your account"',
      (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: CinemaSignInForm(),
        ),
      ),
    );

    await tester.pumpAndSettle(); // Ensure any async operations complete

    expect(find.text('Sign in to your account'), findsOneWidget);
  });
}
