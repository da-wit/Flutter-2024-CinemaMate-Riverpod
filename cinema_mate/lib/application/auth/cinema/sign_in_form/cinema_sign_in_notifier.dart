import 'package:cinema_mate/application/auth/cinema/sign_in_form/cinema_sign_in_state.dart';
import 'package:cinema_mate/domain/auth/cinema/cinema_auth_failure.dart';
import 'package:cinema_mate/domain/auth/cinema/i_cinema_auth_repository.dart';
import 'package:cinema_mate/domain/auth/cinema/value_objects.dart';
import 'package:cinema_mate/domain/auth/user/user_token.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class CinemaSignInNotifier extends StateNotifier<CinemaSignInState> {
  final ICinemaAuthRepository iCinemaAuthRepository;

  CinemaSignInNotifier(this.iCinemaAuthRepository)
      : super(CinemaSignInState.initial());

  CinemaSignInState get testState => state;

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

  onSignInWithEmailAndPasswordPressed() async {
    Either<CinemaAuthFailure, UserToken>? faliureOrSuccess;
    Either<CinemaAuthFailure, Unit>? faliureOrSuccessResult;

    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      state = state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      faliureOrSuccess = await iCinemaAuthRepository.signInWithEmailAndPassword(
          email: state.email, password: state.password);

      faliureOrSuccessResult = faliureOrSuccess.fold(
          (failure) => left(failure), (userToken) => right(unit));
    }
    state = state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(faliureOrSuccessResult),
    );
  }
}
