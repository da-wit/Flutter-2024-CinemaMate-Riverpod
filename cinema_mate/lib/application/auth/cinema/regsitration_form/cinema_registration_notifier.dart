import 'package:cinema_mate/application/auth/cinema/regsitration_form/cinema_registration_state.dart';
import 'package:cinema_mate/domain/auth/cinema/cinema_auth_failure.dart';
import 'package:cinema_mate/domain/auth/cinema/i_cinema_auth_repository.dart';
import 'package:cinema_mate/domain/auth/cinema/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class CinemaRegistrationNotifier
    extends StateNotifier<CinemaRegistrationState> {
  final ICinemaAuthRepository iCinemaAuthRepository;
  CinemaRegistrationNotifier(this.iCinemaAuthRepository)
      : super(CinemaRegistrationState.initial());
  CinemaRegistrationState get testState => state;

  void onCinemaNameChanged({required String cinemaName}) {
    state = state.copyWith(
      cinemaName: CinemaName(cinemaName),
      authFailureOrSuccessOption: none(),
    );
  }

  void onEmailChanged({required String email}) {
    state = state.copyWith(
      email: EmailAddress(email),
      authFailureOrSuccessOption: none(),
    );
  }

  void onPasswordChanged({required String password}) {
    state = state.copyWith(
      password: Password(password),
      authFailureOrSuccessOption: none(),
    );
  }

  void onDescriptionChanged({required String description}) {
    state = state.copyWith(
      description: CinemaDescription(description),
      authFailureOrSuccessOption: none(),
    );
  }

  onRegisterWithEmailAndPassword() async {
    Either<CinemaAuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();
    final isCinemaNameValid = state.cinemaName.isValid();
    final isDescriptionValid = state.description.isValid();

    if (isEmailValid &&
        isPasswordValid &&
        isCinemaNameValid &&
        isDescriptionValid) {
      state = state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess =
          await iCinemaAuthRepository.registerWithEmailAndPassword(
              email: state.email,
              password: state.password,
              username: state.cinemaName,
              description: state.description);
    }

    state = state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
