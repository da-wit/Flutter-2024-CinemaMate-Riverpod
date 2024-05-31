import 'package:cinema_mate/application/user/user_profile/user_profile_checker/user_profile_checker_notifier.dart';
import 'package:cinema_mate/application/user/user_profile/user_profile_checker/user_profile_checker_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProfileProvider =
    StateNotifierProvider<UserProfileCheckerNotifier, UserProfileCheckerState>(
        (ref) {
  return getIt<UserProfileCheckerNotifier>();
});
