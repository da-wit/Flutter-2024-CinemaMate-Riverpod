import 'package:cinema_mate/application/auth/user/user_auth_provider.dart';
import 'package:cinema_mate/application/auth/user/user_auth_state.dart';
import 'package:cinema_mate/application/user/user_profile/user_profile_checker/user_profile_checker_provider.dart';
import 'package:cinema_mate/application/user/user_profile/user_profile_checker/user_profile_checker_state.dart';
import 'package:cinema_mate/presentation/core/widgets/app_color.dart';
import 'package:cinema_mate/presentation/core/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final newColor = AppColor();

class UserProfilePage extends ConsumerWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final userAuthNotifier = ref.read(userAuthProvider.notifier);
    // final userAuthState = ref.watch(userAuthProvider);

    final userProfileCheckerNotifier = ref.read(userProfileProvider.notifier);
    final userProfileCheckerState = ref.watch(userProfileProvider);

    userProfileCheckerNotifier.onFetchUserDetails();
    // Future.microtask(() {
    //   userProfileCheckerNotifier.onFetchUserDetails();
    // });

    ref.listen<UserAuthState>(userAuthProvider, (previous, next) {
      next.maybeMap(
          unauthenticated: (_) {
            context.go('/user/login');
          },
          orElse: () {});
    });

    ref.listen<UserProfileCheckerState>(
        userProfileProvider, (previous, next) {});

    return Center(
      child: userProfileCheckerState.maybeMap(
        loadSuccess: (value) {
          print(value.userProfile.username.getOrCrash());
          return Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Text(
                value.userProfile.username.getOrCrash(),
                style: TextStyle(color: newColor.white, fontSize: 25),
              ),
              const SizedBox(height: 10),
              Text(
                value.userProfile.email.getOrCrash(),
                style: TextStyle(
                  color: newColor.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(height: 30),
              AppButton(
                title: 'Change Password',
                width: 250,
                onPressed: () {
                  context.go('/user/change_password');
                },
              ),
              const SizedBox(height: 20),
              AppButton(
                title: 'Change Username',
                width: 250,
                onPressed: () {
                  context.go('/user/change_Username');
                },
              ),
              const Spacer(),
              AppButton(
                title: 'Log Out',
                leftIcon: const Icon(Icons.logout),
                width: 200,
                onPressed: () {
                  context.go('/user/login');
                },
              ),
              const SizedBox(height: 20),
              AppButton(
                title: 'Delete Account',
                width: 250,
                onPressed: () {},
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          );
        },
        orElse: () {
          return const Text('Loading ...');
        },
      ),
    );
  }
}
