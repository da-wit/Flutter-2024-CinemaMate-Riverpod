import 'package:cinema_mate/domain/crudMovie/delete_movie/delete_failure.dart';
import 'package:cinema_mate/domain/crudMovie/delete_movie/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_movie_state.freezed.dart';

@freezed
class DeleteMovieState with _$DeleteMovieState {
  const factory DeleteMovieState({
    required MovieId movieId,
    required bool showErrorMessages,
    required Option<Either<DeleteFailure, Unit>> deleteFailureOrSuccessOption,
  }) = _DeleteMovieState;

  factory DeleteMovieState.initial() => DeleteMovieState(
        movieId: MovieId(''),
        showErrorMessages: false,
        deleteFailureOrSuccessOption: none(),
      );
}
