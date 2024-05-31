import 'package:cinema_mate/application/user/user_bottom_nav_bar/user_bottom_nav_bar_provider.dart';
import 'package:cinema_mate/application/user/user_profile/change_user_name/change_user_name_provider.dart';
import 'package:cinema_mate/application/user/user_profile/change_user_name/change_user_name_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class UserChangeUserNamePage extends ConsumerWidget {
  const UserChangeUserNamePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userBottomnavNotifier = ref.read(userBottomNavBarProvider.notifier);
    final changeUserNameNotifier = ref.read(changeUserNameProvider.notifier);
    final changeUserNameState = ref.watch(changeUserNameProvider);

    ref.listen<ChangeUserNameState>(changeUserNameProvider, (previous, next) {
      next.maybeMap(changeUserName: (state) {
        state.profileFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold((failure) {
            return ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: failure.maybeMap(
                  serverError: (_) => const Text('Server Error'),
                  orElse: () {
                    return const Text('Something is went wrong');
                  },
                ),
              ),
            );
          }, (unit) {
            context.go('/user/home');

            // userBottomnavNotifier.onProfilePageSelected();
            // userProfileCheckerNotifier.onFetchUserDetails();

            return ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Username Changed Successfully'),
              ),
            );
          }),
        );
      }, orElse: () {
        return ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Server Error'),
          ),
        );
      });
    });

    return Scaffold(
      appBar: AppBar(
          title: const Text('Change User Name'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.go('/user/home');
              userBottomnavNotifier.onProfilePageSelected();

              // userProfileCheckerNotifier.onFetchUserDetails();
              // Future.microtask(() {
              //   userProfileCheckerNotifier.onFetchUserDetails();
              // });
            },
          )),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Form(
              autovalidateMode: changeUserNameState.map(
                  changeUserName: (state) => state.showErrorMessages
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'New Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onChanged: (value) => changeUserNameNotifier
                        .onChnageUserName(userName: value),
                    validator: (_) => changeUserNameState.map(
                      changeUserName: (state) => state.userName.value.fold(
                        (failure) => failure.maybeMap(
                          shortUsername: (_) => 'Short User Name',
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
                      changeUserNameNotifier.onChangeUserNameSubmitted();
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
