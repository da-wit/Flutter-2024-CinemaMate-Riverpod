import 'package:cinema_mate/domain/auth/user/i_auth_repository.dart';
import 'package:cinema_mate/domain/auth/user/value_objects.dart';
import 'package:cinema_mate/domain/auth/user/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

import 'manage_user_account_state.dart';

@injectable
class ManageUserAccountNotifier extends StateNotifier<ManageUserAccountState> {
  final IAuthRepository iAuthRepository;

  ManageUserAccountNotifier(this.iAuthRepository)
      : super(const ManageUserAccountState.initial());

  void started() {
    state = const ManageUserAccountState.initial();
  }

  void currentPasswordChanged(String password) {
    final currentState = state;
    if (currentState is ChangePassword) {
      state = currentState.copyWith(
        currentPassword: Password(password),
        authFailureOrSuccessOption: none(),
      );
    }
  }

  void newPasswordChanged(String password) {
    final currentState = state;
    if (currentState is ChangePassword) {
      state = currentState.copyWith(
        newPassword: Password(password),
        authFailureOrSuccessOption: none(),
      );
    }
  }

  void passwordConfirmationChanged(String confirmation) {
    final currentState = state;
    if (currentState is ChangePassword) {
      state = currentState.copyWith(
        confirmation: Password(confirmation),
        authFailureOrSuccessOption: none(),
      );
    }
  }

  void currentUsernameChanged(String username) {
    final currentState = state;
    if (currentState is ChangeUsername) {
      state = currentState.copyWith(
        currentUsername: Username(username),
        authFailureOrSuccessOption: none(),
      );
    }
  }

  void newUsernameChanged(String username) {
    final currentState = state;
    if (currentState is ChangeUsername) {
      state = currentState.copyWith(
        newUsername: Username(username),
        authFailureOrSuccessOption: none(),
      );
    }
  }

  void changePasswordClicked() {
    state = ManageUserAccountState.changePasswordInitial();
  }

  Future<void> changePasswordSubmitted() async {
    final currentState = state;
    Either<AuthFailure, Unit>? failureOrSuccess;

    if (currentState is ChangePassword) {
      final currentPassword = currentState.currentPassword;
      final newPassword = currentState.newPassword;
      final confirmation = currentState.confirmation;

      if (currentPassword.isValid() &&
          newPassword.isValid() &&
          confirmation.isValid()) {
        if (newPassword != confirmation) {
          state = currentState.copyWith(
            showErrorMessages: false,
            authFailureOrSuccessOption: optionOf(
              left(const AuthFailure.passwordsDoesntMatch()),
            ),
          );
          return;
        }
        state = currentState.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await iAuthRepository.changePassword(
          currentPassword: currentPassword,
          newPassword: newPassword,
        );

        state = currentState.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      } else {
        state = currentState.copyWith(
          showErrorMessages: true,
        );
      }
    } else {
      state = ManageUserAccountState.changePasswordInitial();
    }
  }

  void changeUsernameClicked() {
    state = ManageUserAccountState.changeUsernameInitial();
  }

  Future<void> changeUsernameSubmitted() async {
    final currentState = state;
    Either<AuthFailure, Unit>? failureOrSuccess;

    if (currentState is ChangeUsername) {
      final currentUsername = currentState.currentUsername;
      final newUsername = currentState.newUsername;

      if (currentUsername.isValid() && newUsername.isValid()) {
        print("this is current ${currentUsername.value}");
        print("this is ${newUsername.value}");
        state = currentState.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await iAuthRepository.changeUsername(
            currentUsername: currentUsername, newUsername: newUsername);

        state = currentState.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      }
    } else {
      state = ManageUserAccountState.changeUsernameInitial();
    }
  }

  void closedChangePassword() {
    state = const ManageUserAccountState.initial();
  }

  void closedChangeUsername() {
    state = const ManageUserAccountState.initial();
  }
}
