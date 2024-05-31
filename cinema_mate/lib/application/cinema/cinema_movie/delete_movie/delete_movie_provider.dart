import 'package:cinema_mate/application/cinema/cinema_movie/delete_movie/delete_movie_notifier.dart';
import 'package:cinema_mate/application/cinema/cinema_movie/delete_movie/delete_movie_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final deleteMovieProvider =
    StateNotifierProvider<DeleteMovieNotifier, DeleteMovieState>((ref) {
  return getIt<DeleteMovieNotifier>();
});
