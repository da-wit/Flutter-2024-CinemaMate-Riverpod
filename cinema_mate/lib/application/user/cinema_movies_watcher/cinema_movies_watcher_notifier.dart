import 'package:cinema_mate/application/user/cinema_movies_watcher/cinema_movies_watcher_state.dart';
import 'package:cinema_mate/domain/movie/movie.dart';
import 'package:cinema_mate/domain/movie/movieFailure.dart';
import 'package:cinema_mate/domain/user/cinema/i_cinema_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class CinemaMoviesWatcherNotifier
    extends StateNotifier<CinemaMoviesWatcherState> {
  final ICinemaRepository iCinemaRepository;
  CinemaMoviesWatcherNotifier(this.iCinemaRepository) : super(const Initial());

  void onWatchAllCinemaMoviesStarted({required String id}) async {
    state = const CinemaMoviesWatcherState.loading();
    iCinemaRepository.checkoutCinemaMovies(id).listen((cinemaMovies) {
      onCinemaMoviesRecieved(cinemaMovies);
    });
  }

  void onCinemaMoviesRecieved(
      Either<MovieFailure, List<UserMovieInfo>> failureOrCinemaMovies) {
    state = failureOrCinemaMovies.fold(
      (f) {
        return CinemaMoviesWatcherState.loadFailure(f);
      },
      (cinemaMovies) {
        return CinemaMoviesWatcherState.loadSuccess(cinemaMovies);
      },
    );
  }
}
