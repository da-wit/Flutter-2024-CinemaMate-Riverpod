import 'package:cinema_mate/domain/auth/user/value_objects.dart';
import 'package:cinema_mate/domain/auth/user/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_user_password_state.freezed.dart';

@freezed
class ChangeUserPasswordState with _$ChangeUserPasswordState {
  const factory ChangeUserPasswordState.changePassword({
    required Password currentPassword,
    required Password newPassword,
    required Password confirmation,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _ChangePassword;

  factory ChangeUserPasswordState.changePasswordInitial() =>
      ChangeUserPasswordState.changePassword(
        currentPassword: Password(''),
        newPassword: Password(''),
        confirmation: Password(''),
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: none(),
      );
}
