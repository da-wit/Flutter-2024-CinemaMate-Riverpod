import 'package:cinema_mate/application/auth/user/account_management/manage_user_account_provider.dart';
import 'package:cinema_mate/application/auth/user/account_management/manage_user_account_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChangePassword extends ConsumerWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manageUserNotifier = ref.read(manageUserAccountProvider.notifier);
    final manageUserState = ref.watch(manageUserAccountProvider);

    ref.listen<ManageUserAccountState>(manageUserAccountProvider,
        (previous, next) {
      next.maybeMap(
        changePassword: (manageUserState) {
          manageUserState.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: failure.maybeMap(
                    wrongPassword: (value) => const Text('Wrong Password'),
                    passwordsDoesntMatch: (value) =>
                        const Text("Password doesn't match with confirmation"),
                    orElse: () => const Text('Nothing happened'),
                  ),
                ),
              );
            }, (unit) {}),
          );
        },
        orElse: () {
          print('Hello World');
        },
      );
    });

    return Scaffold(
        appBar: AppBar(
            title: const Text('Change Password'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                manageUserNotifier.started();
                Navigator.of(context).pop();
              },
            )),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Center(
            child: Form(
              autovalidateMode: manageUserState.map(
                initial: (_) => AutovalidateMode.disabled,
                changePassword: (state) => state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                changeUsername: (_) => AutovalidateMode.disabled,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Current password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onChanged: (value) =>
                        manageUserNotifier.currentPasswordChanged(value),
                    validator: (_) => manageUserState.map(
                        initial: (_) => null,
                        changeUsername: (_) => null,
                        changePassword: (manageUserState) =>
                            manageUserState.currentPassword.value.fold(
                              (failure) => failure.maybeMap(
                                shortPassword: (_) => 'Short password',
                                orElse: () => null,
                              ),
                              (_) => null,
                            )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'New Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      onChanged: (value) =>
                          manageUserNotifier.newPasswordChanged(value),
                      validator: (_) => manageUserState.map(
                            initial: (_) => null,
                            changeUsername: (_) => null,
                            changePassword: (manageUserState) =>
                                manageUserState.newPassword.value.fold(
                              (failure) => failure.maybeMap(
                                shortPassword: (_) => 'Short password',
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                          )),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onChanged: (value) =>
                        manageUserNotifier.passwordConfirmationChanged(value),
                    validator: (_) => manageUserState.map(
                      initial: (_) => null,
                      changeUsername: (_) => null,
                      changePassword: (manageUserState) =>
                          manageUserState.confirmation.value.fold(
                        (failure) => failure.maybeMap(
                            shortPassword: (_) => 'Short password',
                            orElse: () => null),
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
                      manageUserNotifier.changePasswordSubmitted();
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
