import 'package:cinema_mate/application/auth/user/register_form/register_form_provider.dart';
import 'package:cinema_mate/application/auth/user/register_form/register_form_state.dart';
import 'package:cinema_mate/presentation/core/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:go_router/go_router.dart';

class UserRegistrationForm extends ConsumerWidget {
  const UserRegistrationForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userRegisterNotifier = ref.read(registerFormProvider.notifier);
    final userRegisterState = ref.watch(registerFormProvider);

    ref.listen<RegisterFormState>(registerFormProvider, (previous, next) {
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
                  usernameAlreadyInUse: (_) =>
                      const Text('Username already in use'),
                  orElse: () => const Text('Something Went wrong'),
                ),
              ),
            );
          },
          (right) {
            context.go('/user/login');
          },
        ),
      );
    });

    return Form(
      autovalidateMode: userRegisterState.showErrorMessages
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
                  labelText: 'fullname',
                ),
                autocorrect: false,
                onChanged: (value) =>
                    userRegisterNotifier.onFullNameChnaged(fullName: value),
                validator: (_) => userRegisterState.fullname.value.fold(
                    (failure) => failure.maybeMap(
                          shortUsername: (_) => 'short name',
                          orElse: () => null,
                        ),
                    (r) => null),
              ),
              const SizedBox(height: 15),
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
                  labelText: 'username',
                ),
                autocorrect: false,
                onChanged: (value) =>
                    userRegisterNotifier.onUserNameChnaged(userName: value),
                validator: (_) => userRegisterState.username.value.fold(
                    (failure) => failure.maybeMap(
                          shortUsername: (_) => 'short username',
                          orElse: () => null,
                        ),
                    (r) => null),
              ),
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
                      userRegisterNotifier.onEmailChanged(email: value),
                  validator: (_) => userRegisterState.emailAddress.value.fold(
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
                onChanged: (value) =>
                    userRegisterNotifier.onPasswordChanged(password: value),
                validator: (_) => userRegisterState.password.value.fold(
                    (failure) => failure.maybeMap(
                          shortPassword: (_) => 'short password',
                          orElse: () => null,
                        ),
                    (r) => null),
              ),
              const SizedBox(height: 50),
              AppButton(
                title: "Sign Up",
                width: 200,
                onPressed: () {
                  userRegisterNotifier.onRegisterWithEmailAndPasswordPressed();
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
