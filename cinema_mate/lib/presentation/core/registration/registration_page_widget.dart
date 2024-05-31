import 'package:cinema_mate/application/role/role_provider.dart';
import 'package:cinema_mate/application/role/role_state.dart';
import 'package:cinema_mate/presentation/auth/cinema/registration/cinema_registration_form.dart';
import 'package:cinema_mate/presentation/auth/user/registration/registration_form.dart';
import 'package:cinema_mate/presentation/core/widgets/app_color.dart';
import 'package:cinema_mate/presentation/core/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:go_router/go_router.dart';

var newColor = AppColor();

class RegistrationPageWidget extends ConsumerWidget {
  const RegistrationPageWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roleNotifier = ref.read(roleProvider.notifier);
    final roleState = ref.watch(roleProvider);
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            newColor.bg,
            newColor.bg,
            newColor.gradiantColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.go('/admin/login');
                    },
                    child: const Text(
                      'Admin',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppButton(
                    title: "As a user",
                    width: 150,
                    buttonColor: roleState == const RoleState.user() ||
                            roleState == const RoleState.initial()
                        ? newColor.primary
                        : newColor.bg,
                    onPressed: () {
                      roleNotifier.onUserClicked();
                    },
                  ),
                  AppButton(
                    title: "As a cinema",
                    width: 170,
                    buttonColor: roleState == const RoleState.cinema()
                        ? newColor.primary
                        : newColor.bg,
                    onPressed: () {
                      roleNotifier.onCinemaClicked();
                    },
                  )
                ],
              ),
              roleState.maybeMap(
                  initial: (_) => const UserRegistrationForm(),
                  user: (value) => const UserRegistrationForm(),
                  cinema: (value) => const CinemaRegistrationForm(),
                  orElse: () => Container())
            ],
          ),
        ),
      ),
    );
  }
}
