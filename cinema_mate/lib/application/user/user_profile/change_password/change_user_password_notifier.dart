import 'package:cinema_mate/application/user/user_profile/change_password/change_user_password_state.dart';
import 'package:cinema_mate/domain/auth/user/auth_failure.dart';
import 'package:cinema_mate/domain/auth/user/i_auth_repository.dart';
import 'package:cinema_mate/domain/auth/user/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChangeUserPasswordNotifier
    extends StateNotifier<ChangeUserPasswordState> {
  final IAuthRepository iAuthRepository;
  ChangeUserPasswordNotifier(this.iAuthRepository)
      : super(ChangeUserPasswordState.changePasswordInitial());

  void onCurrentPasswordChanged({required String currentPassword}) {
    state = state.copyWith(
      currentPassword: Password(currentPassword),
      authFailureOrSuccessOption: none(),
    );
  }

  void onNewPasswordChanged({required String newPassword}) {
    state = state.copyWith(
      newPassword: Password(newPassword),
      authFailureOrSuccessOption: none(),
    );
  }

  void onConfirmNewPasswordChanged({required String confirmPassword}) {
    state = state.copyWith(
      confirmation: Password(confirmPassword),
      authFailureOrSuccessOption: none(),
    );
  }

  void onChangePasswordSubmitted() async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isCurrentPasswordValid = state.currentPassword.isValid();
    final isNewPasswordValid = state.newPassword.isValid();
    final isConfirmationPasswordValid = state.confirmation.isValid();

    if (isCurrentPasswordValid &&
        isNewPasswordValid &&
        isConfirmationPasswordValid) {
      if (state.newPassword.value != state.confirmation.value) {
        state = state.copyWith(
          authFailureOrSuccessOption: some(
            const Left(
              AuthFailure.passwordsDoesntMatch(),
            ),
          ),
        );
      }
      state = state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      failureOrSuccess = await iAuthRepository.changePassword(
          currentPassword: state.currentPassword,
          newPassword: state.newPassword);

      state = state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess));
    }
  }
}
