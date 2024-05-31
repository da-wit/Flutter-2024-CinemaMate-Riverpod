import 'package:cinema_mate/application/auth/admin/sign_in_form/admin_sign_in_notifier.dart';
import 'package:cinema_mate/application/auth/admin/sign_in_form/admin_sign_in_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final adminSignInProvider =
    StateNotifierProvider<AdminSignInNotifier, AdminSignInState>((ref) {
  return getIt<AdminSignInNotifier>();
});
