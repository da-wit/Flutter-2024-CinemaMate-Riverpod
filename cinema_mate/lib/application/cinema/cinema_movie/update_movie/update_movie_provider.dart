import 'package:cinema_mate/application/cinema/cinema_movie/update_movie/update_movie_notifier.dart';
import 'package:cinema_mate/application/cinema/cinema_movie/update_movie/update_movie_state.dart';
import 'package:cinema_mate/domain/crudMovie/update_movie/i_update_movie_repository.dart';
import 'package:cinema_mate/domain/movie/movie.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final updateMovieProvider = StateNotifierProvider.family<UpdateMovieNotifier,
    UpdateMovieState, MovieInfo>((ref, movie) {
  final iUpdateMovierepository = getIt<IUpdateMovierepository>();
  return UpdateMovieNotifier(iUpdateMovierepository, movie);
});
