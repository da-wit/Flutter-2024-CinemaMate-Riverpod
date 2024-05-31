import 'package:cinema_mate/application/user/user_profile/change_password/change_user_password_provider.dart';
import 'package:cinema_mate/application/user/user_profile/change_password/change_user_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ChangeUserPasswordPage extends ConsumerWidget {
  const ChangeUserPasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final changePasswordNotifier =
        ref.read(changeUserPasswordProvider.notifier);
    final changePasswordState = ref.watch(changeUserPasswordProvider);

    ref.listen<ChangeUserPasswordState>(changeUserPasswordProvider,
        (previous, next) {
      next.maybeMap(
        changePassword: (state) {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
              return ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: failure.maybeMap(
                    wrongPassword: (value) => const Text('Wrong Password'),
                    passwordsDoesntMatch: (value) =>
                        const Text('Password doesnt match with confirmation'),
                    orElse: () {
                      return const Text('Noting happened');
                    },
                  ),
                ),
              );
            }, (unit) {
              context.go('/user/home');
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Password changed successfully'),
                ),
              );
            }),
          );
        },
        orElse: () {},
      );
    });

    return Scaffold(
        appBar: AppBar(
            title: const Text('Change Password'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                context.go('/user/home');
              },
            )),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Center(
            child: Form(
              autovalidateMode: changePasswordState.map(
                changePassword: (state) => state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Current password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onChanged: (value) => changePasswordNotifier
                        .onCurrentPasswordChanged(currentPassword: value),
                    validator: (_) => changePasswordState.map(
                      changePassword: (state) =>
                          state.currentPassword.value.fold(
                        (failure) => failure.maybeMap(
                          shortPassword: (_) => 'Short password',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'New Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onChanged: (value) => changePasswordNotifier
                        .onNewPasswordChanged(newPassword: value),
                    validator: (_) => changePasswordState.map(
                      changePassword: (state) => state.newPassword.value.fold(
                        (failure) => failure.maybeMap(
                          shortPassword: (_) => 'Short password',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onChanged: (value) => changePasswordNotifier
                        .onConfirmNewPasswordChanged(confirmPassword: value),
                    validator: (_) => changePasswordState.map(
                      changePassword: (state) => state.confirmation.value.fold(
                        (failure) => failure.maybeMap(
                          passwordsDoesntMatch: (_) => 'Passwords must match',
                          shortPassword: (_) => 'Short password',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 224, 67, 56),
                        minimumSize: const Size(180, 60),
                        maximumSize: const Size(200, 90)),
                    onPressed: () {
                      changePasswordNotifier.onChangePasswordSubmitted();
                    },
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
