import 'package:cinema_mate/application/account_management/manage_user_account_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChangePasswordPage extends ConsumerWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manageState = ref.watch(manageUserAccountProvider);
    final manageNotifier = ref.read(manageUserAccountProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Form(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onChanged: (value) {
                  manageNotifier.currentPasswordChanged(value);
                },
                validator: (_) => manageState.map(
                  initial: (_) => null,
                  changeUsername: (_) => null,
                  changePassword: (state) => state.currentPassword.value.fold(
                    (failure) => failure.maybeMap(
                      shortPassword: (_) => 'Short password',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
                ),
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Current password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (value) {
                  manageNotifier.newPasswordChanged(value);
                },
                validator: (_) => manageState.map(
                  initial: (_) => null,
                  changeUsername: (_) => null,
                  changePassword: (state) => state.newPassword.value.fold(
                    (failure) => failure.maybeMap(
                      shortPassword: (_) => 'Short password',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
                ),
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'New Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (value) {
                  manageNotifier.passwordConfirmationChanged(value);
                },
                validator: (_) => manageState.map(
                  initial: (_) => null,
                  changeUsername: (_) => null,
                  changePassword: (state) => state.confirmation.value.fold(
                    (failure) => failure.maybeMap(
                      shortPassword: (_) => 'Short password',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
                ),
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
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
                    manageNotifier.changePasswordSubmitted();
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))
            ],
          )),
        ),
      ),
    );
  }
}
