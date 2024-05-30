// import 'package:cinema_mate/application/account_management/manage_user_account_notifier.dart';
// import 'package:cinema_mate/application/account_management/manage_user_account_provider.dart';
// import 'package:cinema_mate/application/account_management/manage_user_account_state.dart';
// import 'package:cinema_mate/injection.dart';
// import 'package:cinema_mate/presentation/core/widgets/app_color.dart';
// import 'package:cinema_mate/presentation/core/widgets/buttons.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final newColor = AppColor();

// class ChangePasswordWidget extends ConsumerWidget {
//   const ChangePasswordWidget({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Consumer(
//       builder: (context, watch, child) {
//         final manageState = ref.watch(manageUserAccountProvider);
//         final manageNotifier = ref.read(manageUserAccountProvider.notifier);

//         manageState.maybeMap(
//           changePassword: (state) {
//             state.authFailureOrSuccessOption.fold(
//               () {},
//               (either) => either.fold((failure) {
//                 Navigator.of(context).pop();
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: failure.maybeMap(
//                       wrongPassword: (value) => const Text('Wrong Password'),
//                       passwordsDoesntMatch: (value) => const Text(
//                           'Password doesn\'t match with confirmation'),
//                       orElse: () => const Text('Something went wrong'),
//                     ),
//                   ),
//                 );
//               }, (unit) {}),
//             );
//           },
//           orElse: () {
//             print('Hello World');
//           },
//         );

//         return Form(
//           autovalidateMode: manageState.map(
//             initial: (_) => AutovalidateMode.disabled,
//             changePassword: (state) => state.showErrorMessages
//                 ? AutovalidateMode.always
//                 : AutovalidateMode.disabled,
//             changeUsername: (_) => AutovalidateMode.disabled,
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Text(
//                 "Change Password",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 25,
//                 ),
//               ),
//               const SizedBox(height: 50),
//               Column(
//                 children: [
//                   TextFormField(
//                     decoration:
//                         const InputDecoration(labelText: 'Previous Password'),
//                     obscureText: true,
//                     onChanged: (value) =>
//                         manageNotifier.currentPasswordChanged(value),
//                     validator: (_) => manageState.map(
//                       initial: (_) => null,
//                       changeUsername: (_) => null,
//                       changePassword: (state) =>
//                           state.currentPassword.value.fold(
//                         (failure) => failure.maybeMap(
//                           shortPassword: (_) => 'Short password',
//                           orElse: () => null,
//                         ),
//                         (_) => null,
//                       ),
//                     ),
//                   ),
//                   TextFormField(
//                     decoration:
//                         const InputDecoration(labelText: 'New Password'),
//                     obscureText: true,
//                     onChanged: (value) => manageNotifier.newPasswordChanged(value),
//                     validator: (_) => manageState.map(
//                       initial: (_) => null,
//                       changeUsername: (_) => null,
//                       changePassword: (state) => state.newPassword.value.fold(
//                         (failure) => failure.maybeMap(
//                           shortPassword: (_) => 'Short password',
//                           orElse: () => null,
//                         ),
//                         (_) => null,
//                       ),
//                     ),
//                   ),
//                   TextFormField(
//                     decoration:
//                         const InputDecoration(labelText: 'Confirm Password'),
//                     obscureText: true,
//                     onChanged: (value) => manageNotifier.passwordConfirmationChanged(value),
//                     validator: (_) => manageState.map(
//                       initial: (_) => null,
//                       changeUsername: (_) => null,
//                       changePassword: (state) => state.confirmation.value.fold(
//                         (failure) => failure.maybeMap(
//                           shortPassword: (_) => 'Short password',
//                           orElse: () => null,
//                         ),
//                         (_) => null,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 50),
//                   AppButton(
//                     title: 'Continue',
//                     width: 200,
//                     onPressed: () {
//                       manageNotifier.changePasswordSubmitted();
//                     },
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 40,
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// class ChangeUsernameWidget extends ConsumerWidget{
//   const ChangeUsernameWidget({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Consumer(
//       builder: (context, watch, child) {
//         final manageState = ref.watch(manageUserAccountProvider);
//         final manageNotifier = ref.read(manageUserAccountProvider.notifier);

//         manageState.maybeMap(
//           changeUsername: (state) {
//             state.authFailureOrSuccessOption.fold(
//               () {},
//               (either) => either.fold((failure) {
//                 Navigator.of(context).pop();
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: failure.maybeMap(
//                       wrongUsername: (failure) => const Text('Wrong Username'),
//                       orElse: () => const Text('Something went wrong'),
//                     ),
//                   ),
//                 );
//               }, (unit) {}),
//             );
//           },
//           orElse: () {
//             print('Hello World');
//           },
//         );

//         return Form(
//           autovalidateMode: manageState.map(
//             initial: (_) => AutovalidateMode.disabled,
//             changePassword: (_) => AutovalidateMode.disabled,
//             changeUsername: (state) => state.showErrorMessages
//                 ? AutovalidateMode.always
//                 : AutovalidateMode.disabled,
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Text(
//                 "Change Username",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 25,
//                 ),
//               ),
//               const SizedBox(height: 50),
//               Column(
//                 children: [
//                   TextFormField(
//                     decoration: InputDecoration(
//                       labelText: 'Previous Username',
//                       labelStyle: TextStyle(color: newColor.bg),
//                     ),
//                     onChanged: (value) =>
//                         manageNotifier.currentUsernameChanged(value),
//                     validator: (_) => manageState.map(
//                       initial: (_) => null,
//                       changeUsername: (state) =>
//                           state.currentUsername.value.fold(
//                         (failure) => failure.maybeMap(
//                           shortUsername: (_) => 'Short username',
//                           orElse: () => null,
//                         ),
//                         (_) => null,
//                       ),
//                       changePassword: (_) => null,
//                     ),
//                   ),
//                   TextFormField(
//                     decoration: InputDecoration(
//                       labelText: 'New Username',
//                       labelStyle: TextStyle(color: newColor.bg),
//                     ),
//                     onChanged: (value) => manageNotifier.newUsernameChanged(value),
//                     validator: (_) => manageState.map(
//                       initial: (_) => null,
//                       changeUsername: (state) => state.newUsername.value.fold(
//                         (failure) => failure.maybeMap(
//                           shortUsername: (_) => 'Short username',
//                           orElse: () => null,
//                         ),
//                         (_) => null,
//                       ),
//                       changePassword: (_) => null,
//                     ),
//                   ),
//                   const SizedBox(height: 50),
//                   AppButton(
//                     title: 'Continue',
//                     width: 200,
//                     onPressed: () {
//                       manageNotifier.changeUsernameSubmitted();
//                     },
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 40,
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
