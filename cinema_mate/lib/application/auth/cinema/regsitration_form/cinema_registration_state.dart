import 'package:cinema_mate/domain/auth/cinema/cinema_auth_failure.dart';
import 'package:cinema_mate/domain/auth/cinema/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cinema_registration_state.freezed.dart';

@freezed
class CinemaRegistrationState with _$CinemaRegistrationState {
  const factory CinemaRegistrationState({
    required CinemaName cinemaName,
    required EmailAddress email,
    required Password password,
    required CinemaDescription description,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _CinemaRegistrationState;

  factory CinemaRegistrationState.initial() => CinemaRegistrationState(
        cinemaName: CinemaName(''),
        email: EmailAddress(''),
        password: Password(''),
        description: CinemaDescription(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
