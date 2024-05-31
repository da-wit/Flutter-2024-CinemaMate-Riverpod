import 'package:cinema_mate/application/cinema/cinema_movie/delete_movie/delete_movie_state.dart';
import 'package:cinema_mate/domain/crudMovie/delete_movie/i_delete_movie_repository.dart';
import 'package:cinema_mate/domain/crudMovie/delete_movie/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteMovieNotifier extends StateNotifier<DeleteMovieState> {
  final IDeleteMovierepository iDeleteMovierepository;
  DeleteMovieNotifier(this.iDeleteMovierepository)
      : super(DeleteMovieState.initial());

  void onMovieIdChanged({required MovieId movieId}) {
    state = state.copyWith(
      movieId: movieId,
      deleteFailureOrSuccessOption: none(),
    );
  }

  void onDeleteMoviepressed() async {
    state = state.copyWith(
        showErrorMessages: true, deleteFailureOrSuccessOption: none());

    final isMovieIdValid = state.movieId.isValid();
    if (isMovieIdValid) {
      final failureOrSuccess =
          await iDeleteMovierepository.deleteMovie(movieId: state.movieId);

      state = state.copyWith(
          deleteFailureOrSuccessOption: optionOf(failureOrSuccess));
    }
  }
}
