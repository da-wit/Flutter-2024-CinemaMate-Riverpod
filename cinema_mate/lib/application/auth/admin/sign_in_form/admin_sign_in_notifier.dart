import 'package:cinema_mate/application/auth/admin/sign_in_form/admin_sign_in_state.dart';
import 'package:cinema_mate/domain/auth/admin/admin_auth_failure.dart';
import 'package:cinema_mate/domain/auth/admin/i_auth_admin_repository.dart';
import 'package:cinema_mate/domain/auth/user/user_token.dart';
import 'package:cinema_mate/domain/auth/user/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class AdminSignInNotifier extends StateNotifier<AdminSignInState> {
  final IAuthAdminRepository iAuthAdminRepository;
  AdminSignInNotifier(this.iAuthAdminRepository)
      : super(AdminSignInState.initial());

  void onEmailChanged({required String userName}) {
    state = state.copyWith(
      username: Username(userName),
      authFailureOrSuccessOption: none(),
    );
  }

  void onPasswordChanged({required String password}) {
    state = state.copyWith(
      password: Password(password),
      authFailureOrSuccessOption: none(),
    );
  }

  void onSignInWithEmailAndPasswordPressed() async {
    Either<AdminAuthFailure, UserToken>? failureOrSuccess;
    Either<AdminAuthFailure, Unit>? failureOrSuccessResult;

    final isUsernameValid = state.username.isValid();
    final isPasswordValid = state.password.isValid();
    if (isPasswordValid && isUsernameValid) {
      state = state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await iAuthAdminRepository.signInWithEmailAndPassword(
          username: state.username, password: state.password);

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
}
