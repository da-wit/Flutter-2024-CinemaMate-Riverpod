import 'package:cinema_mate/application/auth/admin/admin_auth_notifier.dart';
import 'package:cinema_mate/application/auth/admin/admin_auth_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final adminauthProvider =
    StateNotifierProvider<AdminAuthNotifier, AdminAuthState>((ref) {
  return getIt<AdminAuthNotifier>();
});
