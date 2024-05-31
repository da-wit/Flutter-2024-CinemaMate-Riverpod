import 'package:cinema_mate/domain/crudMovie/update_movie/update_failure.dart';
import 'package:cinema_mate/domain/movie/movie.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_movie_state.freezed.dart';

@freezed
class UpdateMovieState with _$UpdateMovieState {
  const factory UpdateMovieState({
    required int id,
    required String title,
    required int numberOfSeats,
    required String date,
    required String genres,
    required String time,
    required bool showErrorMessages,
    required Option<Either<UpdateFailure, Unit>> updateFailureOrSuccessOption,
  }) = _UpdateMovieState;

  factory UpdateMovieState.initial(MovieInfo movie) => UpdateMovieState(
      id: movie.id,
      title: movie.name,
      numberOfSeats: movie.numberOfSeats,
      showErrorMessages: false,
      date: movie.date,
      time: movie.time,
      genres: movie.genre.join(', '),
      updateFailureOrSuccessOption: none());
}
