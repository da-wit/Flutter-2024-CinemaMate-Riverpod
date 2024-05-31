import 'package:cinema_mate/application/user/user_profile/change_password/change_user_password_notifier.dart';
import 'package:cinema_mate/application/user/user_profile/change_password/change_user_password_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final changeUserPasswordProvider =
    StateNotifierProvider<ChangeUserPasswordNotifier, ChangeUserPasswordState>(
        (ref) {
  return getIt<ChangeUserPasswordNotifier>();
});
