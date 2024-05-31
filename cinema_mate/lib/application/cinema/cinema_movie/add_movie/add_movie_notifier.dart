import 'dart:io';

import 'package:cinema_mate/application/cinema/cinema_movie/add_movie/add_movie_state.dart';
import 'package:cinema_mate/domain/crudMovie/add_movie/I_add_movie_repository.dart';
import 'package:cinema_mate/domain/crudMovie/add_movie/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddMovieNotifier extends StateNotifier<AddMovieState> {
  final IAddMovierepository iAddMovierepository;
  AddMovieNotifier(this.iAddMovierepository) : super(AddMovieState.initial());

  void onInitialized() {
    state = AddMovieState.initial();
  }

  void onTitleChanged({required String title}) {
    state = state.copyWith(
      title: title,
      addFailureOrSuccessOption: none(),
    );
  }

  void onGenreChanged(String genre) {
    state = state.copyWith(
      genre: genre,
      addFailureOrSuccessOption: none(),
    );
  }

  void onNumberOdSeatesChanged({required int numberOfSeats}) {
    state = state.copyWith(
      numberOfSeats: numberOfSeats,
      addFailureOrSuccessOption: none(),
    );
  }

  void onDateChanged({required DateTime date}) {
    state = state.copyWith(
      date: Date(date),
      addFailureOrSuccessOption: none(),
    );
  }

  void onTimeChanged({required time}) {
    state = state.copyWith(
      time: Time(time),
      addFailureOrSuccessOption: none(),
    );
  }

  void onImageChanged({required File imagePath}) {
    state = state.copyWith(
      image: imagePath,
      addFailureOrSuccessOption: none(),
    );
  }

  void onAddMoviePressed() async {
    state = state.copyWith(
        showErrorMessages: true, addFailureOrSuccessOption: none());
    final isTitleValid = state.title.isNotEmpty;
    final isNumberOdSeatsValid = state.numberOfSeats != 0;
    final isDateValid = state.date.isValid();
    final isTimeValid = state.time.isValid();
    final isImageValid = state.image != null;
    final isGeneresValid = state.genre.isNotEmpty;

    if (isGeneresValid &&
        isNumberOdSeatsValid &&
        isImageValid &&
        isTimeValid &&
        isDateValid &&
        isTitleValid) {
      final failureOrSuccess = await iAddMovierepository.addMovie(
          title: state.title,
          numberOfSeats: state.numberOfSeats,
          genres: state.genre,
          date: state.date,
          image: state.image!,
          time: state.time);

      state =
          state.copyWith(addFailureOrSuccessOption: optionOf(failureOrSuccess));
    }
  }
}
