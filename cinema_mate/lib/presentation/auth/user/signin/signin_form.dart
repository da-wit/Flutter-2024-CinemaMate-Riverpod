import 'package:cinema_mate/application/auth/user/sign_in_form/sign_in_form_provider.dart';
import 'package:cinema_mate/application/auth/user/sign_in_form/sign_in_form_state.dart';
import 'package:cinema_mate/presentation/core/widgets/app_color.dart';
import 'package:cinema_mate/presentation/core/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

var appColor = AppColor();

class SignInForm extends ConsumerWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInNotifier = ref.read(signInFormProvider.notifier);
    final signInState = ref.watch(signInFormProvider);

    ref.listen<SignInFormState>(signInFormProvider, (previous, next) {
      next.authFailureOrSuccessOption.fold(() {}, (either) {
        either.fold((failure) {
          return ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.floating,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              showCloseIcon: true,
              content: failure.maybeMap(
                invalidEmailOrPassword: (_) =>
                    const Text('Incorrect username or password'),
                userNotFound: (_) => const Text('User not found'),
                accountSuspended: (_) => const Text(
                    'Account suspended: Contact us for more info on www.cinemaMate.com'),
                serverError: (_) => const Text('Server Error'),
                orElse: () => const Text('Something went wrong'),
              ),
            ),
          );
        }, (right) {
          context.go('/user/home');
        });
      });
    });

    return Form(
      autovalidateMode: signInState.showErrorMessages
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
                          onChanged: (value) =>
                              signInNotifier.onEmailChanged(email: value),
                          validator: (_) => signInState.emailAddress.value.fold(
                              (failure) => failure.maybeMap(
                                  invalidEmail: (_) => "Invalid Email",
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
                        onChanged: (value) =>
                            signInNotifier.onPasswordChanged(password: value),
                        validator: (_) => signInState.password.value.fold(
                            (failure) => failure.maybeMap(
                                shortPassword: (_) => 'Short password',
                                orElse: () => null),
                            (right) => null),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account? ",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          GestureDetector(
                            onTap: () {
                              context.go('/registration');
                            },
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.red,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      AppButton(
                        title: 'Sign in',
                        width: 200,
                        onPressed: () {
                          signInNotifier.onSignInWithEmailAndPasswordPressed();
                        },
                        textSize: 25,
                      ),
                      const SizedBox(
                        height: 30,
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
