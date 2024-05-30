import 'package:cinema_mate/application/account_management/manage_user_account_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChangeUserNamePage extends ConsumerWidget {
  const ChangeUserNamePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manageState = ref.watch(manageUserAccountProvider);
    final manageNotifier = ref.read(manageUserAccountProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Username'),
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
                  manageNotifier.currentUsernameChanged(value);
                },
                validator: (_) => manageState.map(
                  initial: (_) => null,
                  changeUsername: (state) => state.currentUsername.value.fold(
                    (failure) => failure.maybeMap(
                      shortUsername: (_) => 'Short username',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
                  changePassword: (_) => null,
                ),
                decoration: const InputDecoration(
                    labelText: 'Current User Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'New User Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                onChanged: (value) {
                  manageNotifier.newUsernameChanged(value);
                },
                validator: (_) => manageState.map(
                  initial: (_) => null,
                  changeUsername: (state) => state.newUsername.value.fold(
                    (failure) => failure.maybeMap(
                      shortUsername: (_) => 'Short username',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
                  changePassword: (_) => null,
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
                    manageNotifier.changeUsernameSubmitted();
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
