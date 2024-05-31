import 'package:cinema_mate/application/cinema/cinema_profile/change_cinema_name/change_cinema_name_state.dart';
import 'package:cinema_mate/domain/auth/cinema/cinema_auth_failure.dart';
import 'package:cinema_mate/domain/auth/cinema/i_cinema_auth_repository.dart';
import 'package:cinema_mate/domain/auth/cinema/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChangeCinemaNameNotifier extends StateNotifier<ChangeCinemaNameState> {
  final ICinemaAuthRepository iCinemaAuthRepository;
  ChangeCinemaNameNotifier(this.iCinemaAuthRepository)
      : super(ChangeCinemaNameState.changeCinemaNameInitial());

  void onChangeCinemaName({required String cinemaName}) {
    state = state.copyWith(
      cinemaName: CinemaName(cinemaName),
      profileFailureOrSuccessOption: none(),
    );
  }

  void onChangeCinemaNameSubmitted() async {
    Either<CinemaAuthFailure, Unit>? failureOrSuccess;
    final isCinemaNameValid = state.cinemaName.isValid();

    if (isCinemaNameValid) {
      state = state.copyWith(
          isSubmitting: true, profileFailureOrSuccessOption: none());

      failureOrSuccess = await iCinemaAuthRepository.changeCinemaName(
          newUsername: state.cinemaName);

      state = state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          profileFailureOrSuccessOption: optionOf(failureOrSuccess));
    }
  }
}
