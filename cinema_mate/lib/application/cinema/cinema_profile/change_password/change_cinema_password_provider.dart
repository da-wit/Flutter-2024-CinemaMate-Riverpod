import 'package:cinema_mate/application/cinema/cinema_profile/change_password/change_cinema_password_notifier.dart';
import 'package:cinema_mate/application/cinema/cinema_profile/change_password/change_cinema_password_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final changeCinemaPasswordProvider = StateNotifierProvider<
    ChangeCinemaPasswordNotifier, ChangeCinemaPasswordState>((ref) {
  return getIt<ChangeCinemaPasswordNotifier>();
});
