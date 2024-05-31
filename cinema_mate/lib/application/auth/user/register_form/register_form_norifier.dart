import 'package:cinema_mate/application/auth/user/register_form/register_form_state.dart';
import 'package:cinema_mate/domain/auth/user/auth_failure.dart';
import 'package:cinema_mate/domain/auth/user/i_auth_repository.dart';
import 'package:cinema_mate/domain/auth/user/value_objects.dart';
import 'package:dartz/dartz.dart';
// import 'package:cinema_mate/domain/auth/user/value_objects.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterFormNorifier extends StateNotifier<RegisterFormState> {
  final IAuthRepository iAuthRepository;
  RegisterFormNorifier(this.iAuthRepository)
      : super(RegisterFormState.initial());

  void onUserNameChnaged({
    required String userName,
  }) {
    state = state.copyWith(
      username: Username(userName),
      authFailureOrSuccessOption: none(),
    );
  }

  void onFullNameChnaged({
    required String fullName,
  }) {
    state = state.copyWith(
      fullname: Fullname(fullName),
      authFailureOrSuccessOption: none(),
    );
  }

  void onEmailChanged({required String email}) {
    state = state.copyWith(
      emailAddress: EmailAddress(email),
      authFailureOrSuccessOption: none(),
    );
  }

  void onPasswordChanged({required String password}) {
    state = state.copyWith(
      password: Password(password),
      authFailureOrSuccessOption: none(),
    );
  }

  void onRegisterWithEmailAndPasswordPressed() async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    final isUserNameValid = state.username.isValid();
    final isFullNameValid = state.fullname.isValid();

    if (isEmailValid && isPasswordValid && isFullNameValid && isUserNameValid) {
      print('it is in');
      state = state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await iAuthRepository.registerWithEmailAndPassword(
          email: state.emailAddress,
          password: state.password,
          username: state.username,
          fullname: state.fullname);
    }

    state = state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
