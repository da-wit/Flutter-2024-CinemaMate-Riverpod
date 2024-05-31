import 'package:cinema_mate/application/auth/cinema/cinema_auth_notifier.dart';
import 'package:cinema_mate/application/auth/cinema/cinema_auth_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cinemaAuthProvider =
    StateNotifierProvider<CinemaAuthNotifier, CinemaAuthState>((ref) {
  return getIt<CinemaAuthNotifier>();
});
