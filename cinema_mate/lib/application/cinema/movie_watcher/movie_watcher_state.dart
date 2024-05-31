import 'package:cinema_mate/domain/movie/movie.dart';
import 'package:cinema_mate/domain/movie/movieFailure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'movie_watcher_state.freezed.dart';

@freezed
class MovieWatcherState with _$MovieWatcherState {
  const factory MovieWatcherState.intial() = Initial;
  const factory MovieWatcherState.loading() = Loading;
  const factory MovieWatcherState.loadSuccess(KtList<MovieInfo> movies) =
      LoadSuccess;
  const factory MovieWatcherState.loadFailure(MovieFailure failure) =
      LoadFailure;
}
