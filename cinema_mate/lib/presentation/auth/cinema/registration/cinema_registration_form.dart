import 'package:cinema_mate/application/auth/cinema/regsitration_form/cinema_registration_provider.dart';
import 'package:cinema_mate/application/auth/cinema/regsitration_form/cinema_registration_state.dart';
import 'package:cinema_mate/presentation/core/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:go_router/go_router.dart';

class CinemaRegistrationForm extends ConsumerWidget {
  const CinemaRegistrationForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registerNotifier = ref.read(cinemaRegistrationProvider.notifier);
    final registerState = ref.watch(cinemaRegistrationProvider);
    ref.listen<CinemaRegistrationState>(cinemaRegistrationProvider,
        (previous, next) {
      next.authFailureOrSuccessOption.fold(
        () {},
        (either) => either.fold(
          (failure) {
            return ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: failure.maybeMap(
                  serverError: (_) => const Text('Server Error'),
                  emailAlreadyInUse: (_) => const Text('Email already in use'),
                  invalidEmailOrPassword: (_) =>
                      const Text('Invalid username or password'),
                  cinemaNameAlreadyInUse: (_) =>
                      const Text('CinemaName already in use'),
                  orElse: () => const Text('Something Went wrong'),
                ),
              ),
            );
          },
          (right) {
            print('Hello world');
            print('Hello world');
            print('Hello world');
          },
        ),
      );
    });

    return Form(
      autovalidateMode: registerState.showErrorMessages
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.grey),
                    labelText: 'cinema name',
                  ),
                  autocorrect: false,
                  onChanged: (value) {
                    registerNotifier.onCinemaNameChanged(cinemaName: value);
                  },
                  validator: (_) => registerState.cinemaName.value.fold(
                      (failure) => failure.maybeMap(
                            shortUsername: (_) => 'short username',
                            orElse: () => null,
                          ),
                      (r) => null)),
              const SizedBox(height: 15),
              TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.grey),
                    labelText: 'Email',
                  ),
                  autocorrect: false,
                  onChanged: (value) =>
                      registerNotifier.onEmailChanged(email: value),
                  validator: (_) => registerState.email.value.fold(
                      (failure) => failure.maybeMap(
                            invalidEmail: (_) => 'Invalid Email',
                            orElse: () => null,
                          ),
                      (r) => null)),
              const SizedBox(height: 15),
              TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.grey),
                    labelText: 'Password',
                  ),
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) {
                    registerNotifier.onPasswordChanged(password: value);
                  },
                  validator: (_) => registerState.password.value.fold(
                      (failure) => failure.maybeMap(
                            shortPassword: (_) => 'short password',
                            orElse: () => null,
                          ),
                      (r) => null)),
              const SizedBox(height: 15),
              TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.grey),
                    labelText: 'description',
                  ),
                  maxLines: 10,
                  autocorrect: false,
                  onChanged: (value) {
                    registerNotifier.onDescriptionChanged(description: value);
                  },
                  validator: (_) => registerState.description.value.fold(
                      (failure) => failure.maybeMap(
                            shortUsername: (_) => 'short description',
                            orElse: () => null,
                          ),
                      (r) => null)),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.go('/cinema/login');
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              AppButton(
                title: "Sign Up",
                width: 200,
                onPressed: () {
                  registerNotifier.onRegisterWithEmailAndPassword();
                },
                textSize: 25,
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}
