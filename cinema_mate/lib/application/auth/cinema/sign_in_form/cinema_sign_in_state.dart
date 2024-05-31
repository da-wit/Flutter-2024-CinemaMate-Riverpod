import 'package:cinema_mate/domain/auth/cinema/cinema_auth_failure.dart';
import 'package:cinema_mate/domain/auth/cinema/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cinema_sign_in_state.freezed.dart';

@freezed
class CinemaSignInState with _$CinemaSignInState {
  const factory CinemaSignInState({
    required EmailAddress email,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _CinemaSigninState;

  factory CinemaSignInState.initial() => CinemaSignInState(
      email: EmailAddress(''),
      password: Password(''),
      showErrorMessages: false,
      isSubmitting: false,
      authFailureOrSuccessOption: none());
}
