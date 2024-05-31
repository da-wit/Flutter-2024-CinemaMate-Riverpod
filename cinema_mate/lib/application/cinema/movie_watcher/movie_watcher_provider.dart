import 'package:cinema_mate/application/cinema/movie_watcher/movie_watcher_notifier.dart';
import 'package:cinema_mate/application/cinema/movie_watcher/movie_watcher_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieWatcherProvider =
    StateNotifierProvider<MovieWatcherNotifier, MovieWatcherState>((ref) {
  return getIt<MovieWatcherNotifier>();
});
