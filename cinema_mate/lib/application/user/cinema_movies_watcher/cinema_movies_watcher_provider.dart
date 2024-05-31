import 'package:cinema_mate/application/user/cinema_movies_watcher/cinema_movies_watcher_notifier.dart';
import 'package:cinema_mate/application/user/cinema_movies_watcher/cinema_movies_watcher_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cinemaMoviesWatcherProvider = StateNotifierProvider<
    CinemaMoviesWatcherNotifier, CinemaMoviesWatcherState>((ref) {
  return getIt<CinemaMoviesWatcherNotifier>();
});
