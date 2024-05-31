import 'package:cinema_mate/domain/auth/admin/admin_auth_failure.dart';
import 'package:cinema_mate/domain/auth/user/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_sign_in_state.freezed.dart';

@freezed
class AdminSignInState with _$AdminSignInState {
  const factory AdminSignInState({
    required Username username,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AdminAuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _AdminSignInState;

  factory AdminSignInState.initial() => AdminSignInState(
        username: Username(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
