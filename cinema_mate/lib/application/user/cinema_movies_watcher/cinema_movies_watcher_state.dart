import 'package:cinema_mate/domain/movie/movie.dart';
import 'package:cinema_mate/domain/movie/movieFailure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cinema_movies_watcher_state.freezed.dart';

@freezed
class CinemaMoviesWatcherState with _$CinemaMoviesWatcherState {
  const factory CinemaMoviesWatcherState.initial() = Initial;
  const factory CinemaMoviesWatcherState.loading() = Loading;
  const factory CinemaMoviesWatcherState.loadSuccess(
      List<UserMovieInfo> cinemaMovies) = LoadSuccess;
  const factory CinemaMoviesWatcherState.loadFailure(MovieFailure failure) =
      LoadFailure;
}
