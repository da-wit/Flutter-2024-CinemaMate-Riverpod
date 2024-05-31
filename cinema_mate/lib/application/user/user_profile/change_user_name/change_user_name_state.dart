import 'package:cinema_mate/domain/auth/user/auth_failure.dart';
import 'package:cinema_mate/domain/auth/user/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'change_user_name_state.freezed.dart';

@freezed
class ChangeUserNameState with _$ChangeUserNameState {
  const factory ChangeUserNameState.changeUserName({
    required Username userName,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> profileFailureOrSuccessOption,
  }) = _ChangeUserName;

  factory ChangeUserNameState.changeUserNameInitial() =>
      ChangeUserNameState.changeUserName(
        userName: Username(''),
        isSubmitting: false,
        showErrorMessages: false,
        profileFailureOrSuccessOption: none(),
      );
}
