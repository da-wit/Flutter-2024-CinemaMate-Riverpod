// import 'package:cinema_mate/application/account_management/manage_user_account_provider.dart';
// import 'package:cinema_mate/application/account_management/manage_user_account_state.dart';
// import 'package:cinema_mate/application/user_auth_notifier.dart';
import 'package:cinema_mate/application/user_auth_provider.dart';
// import 'package:cinema_mate/application/user_auth_state.dart';
// import 'package:cinema_mate/presentation/auth/user/user_profile/widgets/account_management_widgets.dart';
import 'package:cinema_mate/presentation/core/account%20management/change_password.dart';
import 'package:cinema_mate/presentation/core/account%20management/change_user_name.dart';
import 'package:cinema_mate/presentation/core/widgets/app_color.dart';
import 'package:cinema_mate/presentation/core/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final newColor = AppColor();

class UserProfile extends ConsumerWidget {
  const UserProfile({super.key});

  // Future showChangePasswordModalSheet(BuildContext context) {
  //   return showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     builder: (context) {
  //       return Consumer(
  //         builder: (context, watch, child) {
  //           return SingleChildScrollView(
  //             child: Container(
  //               width: double.infinity,
  //               padding: EdgeInsets.only(
  //                 bottom: MediaQuery.of(context).viewInsets.bottom + 10,
  //                 left: 20,
  //                 right: 20,
  //                 top: 20,
  //               ),
  //               child: const ChangePasswordWidget(),
  //             ),
  //           );
  //         },
  //       );
  //     },
  //   );
  // }

  // Future showChangeUsernameModalSheet(BuildContext context) {
  //   return showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     builder: (context) {
  //       return Consumer(
  //         builder: (context, watch, child) {
  //           return SingleChildScrollView(
  //             child: Container(
  //               width: double.infinity,
  //               padding: EdgeInsets.only(
  //                 bottom: MediaQuery.of(context).viewInsets.bottom + 10,
  //                 left: 20,
  //                 right: 20,
  //                 top: 20,
  //               ),
  //               child: const ChangeUsernameWidget(),
  //             ),
  //           );
  //         },
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final userAuthNotifier = ref.read(userAuthProvider.notifier);
    // final userAuthState = ref.watch(userAuthProvider);
    return Scaffold(
      backgroundColor: newColor.bg,
      body: Container(
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
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ChangePasswordPage()));
              },
              height: 60,
              textSize: 20,
            ),
            const SizedBox(height: 20),
            AppButton(
              title: 'Change Username',
              width: 300,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ChangeUserNamePage()));
              },
              height: 60,
              textSize: 20,
            ),
            const SizedBox(height: 100),
            // Use Auth bloc for the below
            AppButton(
              title: 'Log Out',
              width: 200,
              onPressed: () {
                // userAuthNotifier.onSignedOut();
              },
              leftIcon: const Icon(Icons.logout),
            ),
            const SizedBox(height: 30),
            AppButton(
              title: 'Delete Account',
              width: 250,
              onPressed: () {
                // userAuthNotifier.deletedAccount();
              },
              leftIcon: const Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
