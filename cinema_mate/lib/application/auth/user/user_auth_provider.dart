import 'package:cinema_mate/application/auth/user/user_auth_notifier.dart';
import 'package:cinema_mate/application/auth/user/user_auth_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userAuthProvider =
    StateNotifierProvider<UserAuthNotifier, UserAuthState>((ref) {
  return getIt<UserAuthNotifier>();
});
