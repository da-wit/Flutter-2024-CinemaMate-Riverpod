import 'package:cinema_mate/application/cinema/cinema_profile/profile_checker/cinema_profile_checker_notifier.dart';
import 'package:cinema_mate/application/cinema/cinema_profile/profile_checker/cinema_profile_checker_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cinemaProfileCheckerProvider = StateNotifierProvider<
    CinemaProfileCheckerNotifier, CinemaProfileCheckerState>((ref) {
  return getIt<CinemaProfileCheckerNotifier>();
});
