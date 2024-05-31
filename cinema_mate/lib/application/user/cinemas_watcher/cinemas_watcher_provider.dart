import 'package:cinema_mate/application/user/cinemas_watcher/cinemas_watcher_notifier.dart';
import 'package:cinema_mate/application/user/cinemas_watcher/cinemas_watcher_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cinemasWatcherProvider =
    StateNotifierProvider<CinemasWatcherNotifier, CinemaWatcherState>((ref) {
  return getIt<CinemasWatcherNotifier>();
});
