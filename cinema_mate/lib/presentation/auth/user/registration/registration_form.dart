import 'package:cinema_mate/application/register_form/register_form_provider.dart';
import 'package:cinema_mate/application/register_form/register_form_state.dart';
import 'package:cinema_mate/presentation/core/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegistrationForm extends ConsumerWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registerNorifire = ref.read(registerFormProvider.notifier);
    final registerState = ref.watch(registerFormProvider);

    ref.listen<RegisterFormState>(registerFormProvider, (previous, next) {
      next.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
                (failure) {
                  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: failure.maybeMap(
                    serverError: (_) => const Text('Server Error'),
                    emailAlreadyInUse: (_) =>
                        const Text('Email already in use'),
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
              ));
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
              Container(
                margin: const EdgeInsets.only(top: 100, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AppButton(
                      title: "As a user",
                      width: 180,
                      onPressed: () {},
                    ),
                    AppButton(
                      title: "As a cinema",
                      width: 180,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
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
                      registerNorifire.onEmailChanged(email: value),
                  validator: (_) => registerState.emailAddress.value.fold(
                      (failure) => failure.maybeMap(
                            invalidEmail: (_) => 'Invalid Email',
                            orElse: () => null,
                          ),
                      (r) => null)),
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
                      registerNorifire.onPasswordChanged(password: value),
                  validator: (_) => registerState.password.value.fold(
                      (failure) => failure.maybeMap(
                            shortPassword: (_) => 'ShortPassword',
                            orElse: () => null,
                          ),
                      (r) => null)),
              TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    labelStyle: TextStyle(color: Colors.grey),
                    labelText: 'username',
                  ),
                  autocorrect: false,
                  onChanged: (value) =>
                      registerNorifire.onUserNameChnaged(userName: value),
                  validator: (_) => registerState.username.value.fold(
                      (failure) => failure.maybeMap(
                            shortUsername: (_) => 'Short userName ',
                            orElse: () => null,
                          ),
                      (r) => null)),
              TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    labelStyle: TextStyle(color: Colors.grey),
                    labelText: 'fullname',
                  ),
                  autocorrect: false,
                  onChanged: (value) =>
                      registerNorifire.onFullNameChnaged(fullName: value),
                  validator: (_) => registerState.username.value.fold(
                      (failure) => failure.maybeMap(
                            shortUsername: (_) => 'Short userName ',
                            orElse: () => null,
                          ),
                      (r) => null)),
              const SizedBox(height: 50),
              AppButton(
                title: "Sign Up",
                width: 200,
                onPressed: () {
                  registerNorifire.onRegisterWithEmailAndPasswordPressed();
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



//