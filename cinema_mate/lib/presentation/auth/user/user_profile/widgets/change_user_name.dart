import 'package:cinema_mate/application/auth/user/account_management/manage_user_account_provider.dart';
import 'package:cinema_mate/application/auth/user/account_management/manage_user_account_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChangeUserName extends ConsumerWidget {
  const ChangeUserName({super.key});

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
                    wrongUsername: (value) => const Text('Wrong Username'),
                    orElse: () => const Text('Something went wrong '),
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
        title: const Text('Change User Name'),
      ),
      body:
          // BlocConsumer<ManageUserAccountBloc, ManageUserAccountState>(
          //   builder: (context, state) {
          //     return
          Container(
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Form(
              autovalidateMode: manageUserState.map(
                initial: (_) => AutovalidateMode.disabled,
                changePassword: (_) => AutovalidateMode.disabled,
                changeUsername: (state) => state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Current User Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      onChanged: (value) =>
                          manageUserNotifier.currentUsernameChanged(value),
                      validator: (_) => manageUserState.map(
                          initial: (_) => null,
                          changeUsername: (manageUserState) =>
                              manageUserState.currentUsername.value.fold(
                                (failure) => failure.maybeMap(
                                  shortUsername: (_) => 'Short username',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                          changePassword: (_) => null)),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'New User Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      onChanged: (value) =>
                          manageUserNotifier.newUsernameChanged(value),
                      validator: (_) => manageUserState.map(
                          initial: (_) => null,
                          changeUsername: (state) =>
                              state.newUsername.value.fold(
                                (failure) => failure.maybeMap(
                                  shortUsername: (_) => 'Short username',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                          changePassword: (_) => null)),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 224, 67, 56),
                        minimumSize: const Size(180, 60),
                        maximumSize: const Size(200, 90)),
                    onPressed: () {
                      manageUserNotifier.changeUsernameSubmitted();
                    },
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
