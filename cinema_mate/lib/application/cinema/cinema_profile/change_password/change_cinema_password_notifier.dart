import 'package:cinema_mate/application/cinema/cinema_profile/change_password/change_cinema_password_state.dart';
import 'package:cinema_mate/domain/auth/cinema/cinema_auth_failure.dart';
import 'package:cinema_mate/domain/auth/cinema/i_cinema_auth_repository.dart';
import 'package:cinema_mate/domain/auth/cinema/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChangeCinemaPasswordNotifier
    extends StateNotifier<ChangeCinemaPasswordState> {
  final ICinemaAuthRepository iCinemaAuthRepository;
  ChangeCinemaPasswordNotifier(this.iCinemaAuthRepository)
      : super(ChangeCinemaPasswordState.changePasswordInitial());

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

  void onConfirmationPasswordChanged({required String conformationPassword}) {
    state = state.copyWith(
      confirmation: Password(conformationPassword),
      authFailureOrSuccessOption: none(),
    );
  }

  void onChangePasswordSubmitted() async {
    Either<CinemaAuthFailure, Unit>? failureOrSuccess;

    final isCurrentPasswordValid = state.currentPassword.isValid();
    final isNewPasswordValid = state.newPassword.isValid();
    final isConfirmationPasswordValid = state.confirmation.isValid();

    if (isCurrentPasswordValid &&
        isNewPasswordValid &&
        isConfirmationPasswordValid) {
      if (state.newPassword.value != state.confirmation.value) {
        failureOrSuccess = left(const CinemaAuthFailure.passwordsDoesntMatch());
      } else {
        state = state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await iCinemaAuthRepository.changePassword(
            currentPassword: state.currentPassword,
            newPassword: state.newPassword);
      }

      state = state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }
  }
}
