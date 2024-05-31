import 'package:cinema_mate/domain/auth/cinema/cinema_auth_failure.dart';
import 'package:cinema_mate/domain/auth/cinema/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_cinema_name_state.freezed.dart';

@freezed
class ChangeCinemaNameState with _$ChangeCinemaNameState {
  const factory ChangeCinemaNameState.changeCinemaName({
    required CinemaName cinemaName,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CinemaAuthFailure, Unit>>
        profileFailureOrSuccessOption,
  }) = _ChangeCinemaName;

  factory ChangeCinemaNameState.changeCinemaNameInitial() =>
      ChangeCinemaNameState.changeCinemaName(
        cinemaName: CinemaName(''),
        isSubmitting: false,
        showErrorMessages: false,
        profileFailureOrSuccessOption: none(),
      );
}
