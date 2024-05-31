import 'package:cinema_mate/application/auth/cinema/sign_in_form/cinema_sign_in_provider.dart';
import 'package:cinema_mate/application/auth/cinema/sign_in_form/cinema_sign_in_state.dart';
import 'package:cinema_mate/presentation/core/widgets/app_color.dart';
import 'package:cinema_mate/presentation/core/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

var appColor = AppColor();

class CinemaSignInForm extends ConsumerWidget {
  const CinemaSignInForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cinemaSignInNotifier = ref.read(cinemaSignInProvider.notifier);
    final cinemaSignInState = ref.watch(cinemaSignInProvider);

    ref.listen<CinemaSignInState>(cinemaSignInProvider, (previous, next) {
      next.authFailureOrSuccessOption.fold(() {}, (either) {
        either.fold(
          (failure) {
            return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              behavior: SnackBarBehavior.floating,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              showCloseIcon: true,
              content: failure.maybeMap(
                invalidEmailOrPassword: (_) =>
                    const Text('Incorrect username and password'),
                cinemaNotFound: (_) => const Text('User not found'),
                accountSuspended: (_) => const Text(
                    'Account suspended: Contact us for more info on www.cinemaMate.com'),
                serverError: (_) => const Text('Server Error'),
                orElse: () => const Text('Something went wrong'),
              ),
            ));
          },
          (right) {
            context.go('/cinema/home');
          },
        );
      });
    });
    return Form(
      autovalidateMode: cinemaSignInState.showErrorMessages
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      child: Scaffold(
        backgroundColor: appColor.bg,
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'CinemaMate',
                    style: GoogleFonts.josefinSans(
                      color: appColor.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'Sign in to your account',
                    style: TextStyle(fontSize: 20, color: appColor.grey),
                  )
                ],
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.grey,
                            ),
                            labelStyle: TextStyle(color: Colors.grey),
                            labelText: 'Email',
                          ),
                          autocorrect: false,
                          onChanged: (value) {
                            cinemaSignInNotifier.onEmailChanged(email: value);
                          },
                          validator: (_) => cinemaSignInState.email.value.fold(
                              (failure) => failure.maybeMap(
                                  invalidEmail: (_) => 'Invalid Email',
                                  orElse: () => null),
                              (right) => null)),
                      const SizedBox(height: 10),
                      TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                            labelStyle: TextStyle(color: Colors.grey),
                            labelText: 'Password',
                          ),
                          autocorrect: false,
                          obscureText: true,
                          onChanged: (value) {
                            cinemaSignInNotifier.onPasswordChanged(
                                password: value);
                          },
                          validator: (_) => cinemaSignInState.password.value
                              .fold(
                                  (failure) => failure.maybeMap(
                                      shortPassword: (_) => 'Short Password',
                                      orElse: () => null),
                                  (right) => null)),
                      const SizedBox(height: 30),
                      AppButton(
                        title: 'Sign in',
                        width: 200,
                        onPressed: () {
                          cinemaSignInNotifier
                              .onSignInWithEmailAndPasswordPressed();
                        },
                        textSize: 25,
                      ),
                      const SizedBox(
                        height: 70,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
