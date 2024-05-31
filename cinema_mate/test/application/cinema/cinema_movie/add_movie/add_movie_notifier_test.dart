import 'dart:io';

import 'package:cinema_mate/application/cinema/cinema_movie/add_movie/add_movie_notifier.dart';
import 'package:cinema_mate/application/cinema/cinema_movie/add_movie/add_movie_provider.dart';

import 'package:cinema_mate/domain/crudMovie/add_movie/I_add_movie_repository.dart';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'add_movie_notifier_test.mocks.dart';

@GenerateMocks([IAddMovierepository])
void main() {
  final mockAddMovieRepository = MockIAddMovierepository();

  ProviderContainer setUpContainer() {
    final container = ProviderContainer(
      overrides: [
        addMovieProvider.overrideWith(
          (ref) => AddMovieNotifier(mockAddMovieRepository),
        ),
      ],
    );
    addTearDown(container.dispose);
    return container;
  }

  group('AddMovieNotifier', () {
    test('onAddMoviePressed updates state to success when all inputs are valid',
        () async {
      when(mockAddMovieRepository.addMovie(
        title: anyNamed('title'),
        numberOfSeats: anyNamed('numberOfSeats'),
        genres: anyNamed('genres'),
        date: anyNamed('date'),
        image: anyNamed('image'),
        time: anyNamed('time'),
      )).thenAnswer((_) async => right(unit));

      final container = setUpContainer();
      final notifier = container.read(addMovieProvider.notifier);

      notifier.onTitleChanged(title: 'Test Movie');
      notifier.onGenreChanged('Action');
      notifier.onNumberOdSeatesChanged(numberOfSeats: 100);
      notifier.onDateChanged(date: DateTime.now());
      notifier.onTimeChanged(time: TimeOfDay(hour: 10, minute: 30));
      notifier.onImageChanged(imagePath: File('test.jpg'));

      await notifier.onAddMoviePressed();

      expect(notifier.testState.addFailureOrSuccessOption, isA<Some>());
      expect(
          notifier.testState.addFailureOrSuccessOption
              .fold(() => null, (a) => a.isRight()),
          isTrue);
    });

    test('onAddMoviePressed updates state to failure when any input is invalid',
        () async {
      final container = setUpContainer();
      final notifier = container.read(addMovieProvider.notifier);

      // Invalidate title
      notifier.onTitleChanged(title: '');

      await notifier.onAddMoviePressed();

      expect(notifier.testState.addFailureOrSuccessOption, isA<None>());
    });
  });
}
