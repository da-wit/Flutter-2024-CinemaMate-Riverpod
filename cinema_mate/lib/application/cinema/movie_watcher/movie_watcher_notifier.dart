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

  void onWatchAllMoviesStarted() {
    state = const MovieWatcherState.loading();

    iMovieRepository.watchAll().listen((failureOrMovies) {
      _onMoviesRecieved(failureOrMovies);
    });
  }

  void _onMoviesRecieved(
      Either<MovieFailure, KtList<MovieInfo>> failureOrMovies) {
    state = failureOrMovies.fold(
      (failure) => MovieWatcherState.loadFailure(failure),
      (movies) => MovieWatcherState.loadSuccess(movies),
    );
  }

  // void onWatchAllMoviesStarted() {
  //   state = const MovieWatcherState.loading();
  //   print('started');

  //   try {
  //     iMovieRepository.watchAll().listen((failureOrMovies) {
  //       print('LALALS');
  //       state = failureOrMovies.fold(
  //         (failure) => MovieWatcherState.loadFailure(failure),
  //         (movies) => MovieWatcherState.loadSuccess(movies),
  //       );
  //     }, onError: () {
  //       print('Error');
  //     }, onDone: () {
  //       print('Done');
  //     });
  //   } catch (e) {
  //     print('uuuuu error');
  //   }
  // }

  // void onMoviesRecieved(
  //     Either<MovieFailure, KtList<MovieInfo>> failureOrMovies) {
  //   state = failureOrMovies.fold(
  //     (failure) => MovieWatcherState.loadFailure(failure),
  //     (movies) => MovieWatcherState.loadSuccess(movies),
  //   );
  // }
}
