import 'package:cinema_mate/application/auth/cinema/regsitration_form/cinema_registration_notifier.dart';
import 'package:cinema_mate/application/auth/cinema/regsitration_form/cinema_registration_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cinemaRegistrationProvider =
    StateNotifierProvider<CinemaRegistrationNotifier, CinemaRegistrationState>(
        (ref) {
  return getIt<CinemaRegistrationNotifier>();
});
