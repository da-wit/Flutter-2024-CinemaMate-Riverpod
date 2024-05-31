import 'package:cinema_mate/application/cinema/cinema_profile/change_cinema_name/change_cinema_name_notifier.dart';
import 'package:cinema_mate/application/cinema/cinema_profile/change_cinema_name/change_cinema_name_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final changeCinemaNameProvider =
    StateNotifierProvider<ChangeCinemaNameNotifier, ChangeCinemaNameState>(
        (ref) {
  return getIt<ChangeCinemaNameNotifier>();
});
