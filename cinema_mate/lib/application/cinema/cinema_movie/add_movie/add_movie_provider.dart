import 'package:cinema_mate/application/cinema/cinema_movie/add_movie/add_movie_notifier.dart';
import 'package:cinema_mate/application/cinema/cinema_movie/add_movie/add_movie_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addMovieProvider =
    StateNotifierProvider<AddMovieNotifier, AddMovieState>((ref) {
  return getIt<AddMovieNotifier>();
});
