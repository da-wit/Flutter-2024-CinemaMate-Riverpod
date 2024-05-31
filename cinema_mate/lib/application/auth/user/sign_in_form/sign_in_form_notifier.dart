import 'package:cinema_mate/application/auth/user/sign_in_form/sign_in_form_state.dart';
import 'package:cinema_mate/domain/auth/user/auth_failure.dart';
import 'package:cinema_mate/domain/auth/user/i_auth_repository.dart';
import 'package:cinema_mate/domain/auth/user/user_token.dart';
import 'package:cinema_mate/domain/auth/user/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignInFormNotifier extends StateNotifier<SignInFormState> {
  final IAuthRepository iAuthRepository;

  SignInFormNotifier(this.iAuthRepository) : super(SignInFormState.initial());

  void onEmailChanged({
    required String email,
  }) {
    state = state.copyWith(
      emailAddress: EmailAddress(email),
      authFailureOrSuccessOption: none(),
    );
  }

  void onPasswordChanged({
    required String password,
  }) {
    state = state.copyWith(
      password: Password(password),
      authFailureOrSuccessOption: none(),
    );
  }

  void onSignInWithEmailAndPasswordPressed() async {
    Either<AuthFailure, UserToken>? failureOrSuccess;
    Either<AuthFailure, Unit>? failureOrSuccessResult;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      state = state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
    }
    failureOrSuccess = await iAuthRepository.signInWithEmailAndPassword(
        email: state.emailAddress, password: state.password);

    failureOrSuccessResult = failureOrSuccess.fold(
      (failure) => left(failure),
      (userToken) => right(unit),
    );

    state = state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccessResult));
  }
}
