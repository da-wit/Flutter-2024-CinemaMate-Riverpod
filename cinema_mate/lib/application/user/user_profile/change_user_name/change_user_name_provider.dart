import 'package:cinema_mate/application/user/user_profile/change_user_name/change_user_name_notifier.dart';
import 'package:cinema_mate/application/user/user_profile/change_user_name/change_user_name_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final changeUserNameProvider =
    StateNotifierProvider<ChangeUserNameNotifier, ChangeUserNameState>((ref) {
  return getIt<ChangeUserNameNotifier>();
});
