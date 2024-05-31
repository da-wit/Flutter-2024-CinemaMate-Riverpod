import 'package:cinema_mate/application/auth/user/account_management/manage_user_account_provider.dart';
import 'package:cinema_mate/application/auth/user/account_management/manage_user_account_state.dart';
import 'package:cinema_mate/application/auth/user/user_auth_provider.dart';
import 'package:cinema_mate/application/auth/user/user_auth_state.dart';
import 'package:cinema_mate/presentation/auth/user/user_profile/widgets/change_password.dart'
    as page;
import 'package:cinema_mate/presentation/auth/user/user_profile/widgets/change_user_name.dart';
import 'package:cinema_mate/presentation/core/widgets/app_color.dart';
import 'package:cinema_mate/presentation/core/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final newColor = AppColor();

class UserProfile extends ConsumerWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manageUserNotifier = ref.read(manageUserAccountProvider.notifier);
    // final manageUserState = ref.watch(manageUserAccountProvider);
    final userAuthNotifier = ref.read(userAuthProvider.notifier);
    // final userAuthState = ref.watch(userAuthProvider);

    ref.listen<ManageUserAccountState>(manageUserAccountProvider,
        (previous, next) {
      next.maybeMap(
          changePassword: (_) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const page.ChangePassword(),
              ),
            );
          },
          changeUsername: (_) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ChangeUserName(),
              ),
            );
          },
          orElse: () {});
    });

    ref.listen<UserAuthState>(userAuthProvider, (previous, next) {
      // Add any specific actions you want to take when UserAuthState changes.
      // For example, navigating to a login screen on logout.
    });

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'User Name',
            style: TextStyle(color: newColor.white, fontSize: 25),
          ),
          const SizedBox(height: 20),
          Text(
            'Email',
            style: TextStyle(color: newColor.grey, fontSize: 20),
          ),
          const SizedBox(height: 20),
          AppButton(
            title: 'Change Password',
            width: 300,
            onPressed: () => manageUserNotifier.changePasswordClicked,
            height: 60,
            textSize: 20,
          ),
          const SizedBox(height: 20),
          AppButton(
            title: 'Change Username',
            width: 300,
            onPressed: () => manageUserNotifier.changeUsernameClicked,
            height: 60,
            textSize: 20,
          ),
          const SizedBox(height: 100),
          // Use Auth bloc for the below
          AppButton(
            title: 'Log Out',
            width: 200,
            onPressed: () => userAuthNotifier.onSignedOut(),
            leftIcon: const Icon(Icons.logout),
          ),
          const SizedBox(height: 30),
          AppButton(
            title: 'Delete Account',
            width: 250,
            onPressed: () => userAuthNotifier.deletedAccount(),
            leftIcon: const Icon(Icons.delete),
          )
        ],
      ),
    );
  }
}
