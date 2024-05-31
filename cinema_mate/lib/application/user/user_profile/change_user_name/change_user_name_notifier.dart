import 'package:cinema_mate/application/user/user_profile/change_user_name/change_user_name_state.dart';
import 'package:cinema_mate/domain/auth/user/auth_failure.dart';
import 'package:cinema_mate/domain/auth/user/i_auth_repository.dart';
import 'package:cinema_mate/domain/auth/user/value_objects.dart';
import 'package:dartz/dartz.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChangeUserNameNotifier extends StateNotifier<ChangeUserNameState> {
  final IAuthRepository iAuthRepository;
  ChangeUserNameNotifier(this.iAuthRepository)
      : super(ChangeUserNameState.changeUserNameInitial());

  void onChnageUserName({required String userName}) {
    state = state.copyWith(
      userName: Username(userName),
      profileFailureOrSuccessOption: none(),
    );
  }

  void onChangeUserNameSubmitted() async {
    Either<AuthFailure, Unit>? failureOrSuccess;
    final isUsername = state.userName.isValid();

    if (isUsername) {
      state = state.copyWith(
        isSubmitting: true,
        profileFailureOrSuccessOption: none(),
      );

      failureOrSuccess =
          await iAuthRepository.changeUsername(newUsername: state.userName);

      state = state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        profileFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }
  }
}
