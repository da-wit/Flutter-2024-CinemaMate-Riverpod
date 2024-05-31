import 'package:cinema_mate/application/auth/cinema/sign_in_form/cinema_sign_in_notifier.dart';
import 'package:cinema_mate/application/auth/cinema/sign_in_form/cinema_sign_in_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cinemaSignInProvider =
    StateNotifierProvider<CinemaSignInNotifier, CinemaSignInState>((ref) {
  return getIt<CinemaSignInNotifier>();
});
