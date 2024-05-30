import 'package:cinema_mate/application/sign_in_form/sign_in_form_provider.dart';
import 'package:cinema_mate/application/sign_in_form/sign_in_form_state.dart';
import 'package:cinema_mate/presentation/core/widgets/app_color.dart';
import 'package:cinema_mate/presentation/core/widgets/buttons.dart';
// import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

var appColor = AppColor();

class SignInForm extends ConsumerWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInFormNotifier = ref.read(signInFormProvider.notifier);
    final signInFormState = ref.watch(signInFormProvider);

    ref.listen<SignInFormState>(
      signInFormProvider,
      (previous, next) {
        next.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: failure.maybeMap(
                serverError: (_) => const Text('Server Error'),
                emailAlreadyInUse: (_) => const Text('Email already in use'),
                invalidEmailOrPassword: (_) =>
                    const Text('Invalid username or password'),
                usernameAlreadyInUse: (_) =>
                    const Text('Username already in use'),
                orElse: () => const Text('Something Went wrong'),
              )));
            },
            (right) {
              print("Hello world");
            },
          ),
        );
      },
    );

    return Form(
      autovalidateMode: signInFormState.showErrorMessages
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
                            return signInFormNotifier.onEmailChanged(
                                email: value);
                          },
                          validator: (_) {
                            return signInFormState.emailAddress.value.fold(
                                (failure) {
                              return failure.maybeMap(
                                  invalidEmail: (value) => "Invalid Email",
                                  orElse: () => null);
                            }, (right) {
                              return null;
                            });
                          }),
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
                            return signInFormNotifier.onPasswordChanged(
                                password: value);
                          },
                          validator: (_) {
                            return signInFormState.password.value.fold(
                                (failure) {
                              return failure.maybeMap(
                                  shortPassword: (value) => "Short password",
                                  orElse: () => null);
                            }, (right) {
                              return null;
                            });
                          }
                          // .read<SignInFormBloc>()
                          // .state
                          // .password
                          // .value
                          // .fold(
                          //     (failure) => failure.maybeMap(
                          //           shortPassword: (_) =>
                          //               'Short password',
                          //           orElse: () => null,
                          //         ),
                          //     (right) => null),
                          ),
                      const SizedBox(height: 30),
                      AppButton(
                        title: 'Sign in',
                        width: 200,
                        onPressed: () {
                          signInFormNotifier
                              .onSignInWithEmailAndPasswordPressed();
                          // context.read<SignInFormBloc>().add(
                          //       const SignInFormEvent
                          //           .signInWithEmailAndPasswordPressed(),
                          //     );
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
