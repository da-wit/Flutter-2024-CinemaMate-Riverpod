import 'package:cinema_mate/domain/auth/cinema/cinema_auth_failure.dart';
import 'package:cinema_mate/domain/auth/cinema/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_cinema_password_state.freezed.dart';

@freezed
class ChangeCinemaPasswordState with _$ChangeCinemaPasswordState {
  const factory ChangeCinemaPasswordState.changePassword({
    required Password currentPassword,
    required Password newPassword,
    required Password confirmation,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _ChangePassword;

  factory ChangeCinemaPasswordState.changePasswordInitial() =>
      ChangeCinemaPasswordState.changePassword(
        currentPassword: Password(''),
        newPassword: Password(''),
        confirmation: Password(''),
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: none(),
      );
}
