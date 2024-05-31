import 'package:cinema_mate/application/cinema/cinema_movie/update_movie/update_movie_state.dart';
import 'package:cinema_mate/domain/crudMovie/update_movie/i_update_movie_repository.dart';
import 'package:cinema_mate/domain/movie/movie.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateMovieNotifier extends StateNotifier<UpdateMovieState> {
  final IUpdateMovierepository iUpdateMovierepository;
  final MovieInfo movie;

  UpdateMovieNotifier(this.iUpdateMovierepository, this.movie)
      : super(UpdateMovieState.initial(movie));

  void onTitleChanged({required String title}) {
    state = state.copyWith(
      title: title,
      updateFailureOrSuccessOption: none(),
    );
  }

  void onGenreChanged({required String genre}) {
    state = state.copyWith(
      genres: genre,
      updateFailureOrSuccessOption: none(),
    );
  }

  void onNumberOdSeatesChanged({required int numberOfSeats}) {
    state = state.copyWith(
      numberOfSeats: numberOfSeats,
      updateFailureOrSuccessOption: none(),
    );
  }

  void onDateChanged({required String date}) {
    state = state.copyWith(date: date, updateFailureOrSuccessOption: none());
  }

  void onTimeChanged({required String time}) {
    state = state.copyWith(
      time: time,
      updateFailureOrSuccessOption: none(),
    );
  }

  onUpdateMoviePressed() async {
    state = state.copyWith(
      showErrorMessages: true,
      updateFailureOrSuccessOption: none(),
    );

    final isTitleValid = state.title.isNotEmpty;
    final isNumberOfSeatsValid = state.numberOfSeats != null;
    final isDateValid = state.date.isNotEmpty;
    final isTimeValid = state.time.isNotEmpty;
    final isGenreValid = state.genres.isNotEmpty;
    final movieId = state.id;

    if (isTitleValid &&
        isNumberOfSeatsValid &&
        isDateValid &&
        isTimeValid &&
        isGenreValid) {
      print("Sending Update");
      print(state.id);
      print(state.title);
      print(state.numberOfSeats);
      print(state.genres);
      print(state.date);
      print(state.time);

      final failureOrSuccess = await iUpdateMovierepository.updateMovie(
          id: movieId,
          title: state.title,
          numberOfSeats: state.numberOfSeats,
          genres: state.genres,
          date: state.date,
          time: state.time);

      state = state.copyWith(
          updateFailureOrSuccessOption: optionOf(failureOrSuccess));
    }
  }
}
