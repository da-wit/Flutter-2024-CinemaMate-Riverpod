import 'package:cinema_mate/domain/auth/user/auth_failure.dart';
import 'package:cinema_mate/domain/auth/user/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_user_account_state.freezed.dart';

@freezed
class ManageUserAccountState with _$ManageUserAccountState {
  const factory ManageUserAccountState.initial() = Initial;
  const factory ManageUserAccountState.changeUsername({
    required Username currentUsername,
    required Username newUsername,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = ChangeUsername;

  const factory ManageUserAccountState.changePassword({
    required Password currentPassword,
    required Password newPassword,
    required Password confirmation,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = ChangePassword;

  factory ManageUserAccountState.changeUsernameInitial() =>
      ManageUserAccountState.changeUsername(
        currentUsername: Username(''),
        newUsername: Username(''),
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: none(),
      );

  factory ManageUserAccountState.changePasswordInitial() =>
      ManageUserAccountState.changePassword(
        currentPassword: Password(''),
        newPassword: Password(''),
        confirmation: Password(''),
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: none(),
      );
}
