import 'package:cinema_mate/application/cinema/movie_watcher/movie_watcher_state.dart';
import 'package:cinema_mate/domain/movie/i_movieRepository.dart';
import 'package:cinema_mate/domain/movie/movie.dart';
import 'package:cinema_mate/domain/movie/movieFailure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@injectable
class MovieWatcherNotifier extends StateNotifier<MovieWatcherState> {
  final IMovieRepository iMovieRepository;
  MovieWatcherNotifier(this.iMovieRepository) : super(const Initial());

  void watchAllMovies() {
    state = const MovieWatcherState.loading();

    iMovieRepository.watchAll().listen(
      (failureOrMovies) {
        state = failureOrMovies.fold(
          (failure) => MovieWatcherState.loadFailure(failure),
          (movies) => MovieWatcherState.loadSuccess(movies),
        );
      },
    );
  }

  void receiveMovies(Either<MovieFailure, KtList<MovieInfo>> failureOrMovies) {
    state = failureOrMovies.fold(
      (failure) => MovieWatcherState.loadFailure(failure),
      (movies) => MovieWatcherState.loadSuccess(movies),
    );
  }
}
