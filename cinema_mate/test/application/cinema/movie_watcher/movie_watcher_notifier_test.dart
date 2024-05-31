import 'package:cinema_mate/application/cinema/movie_watcher/movie_watcher_notifier.dart';
import 'package:cinema_mate/application/cinema/movie_watcher/movie_watcher_provider.dart';
import 'package:cinema_mate/application/cinema/movie_watcher/movie_watcher_state.dart';
import 'package:cinema_mate/domain/movie/i_movieRepository.dart';
import 'package:cinema_mate/domain/movie/movie.dart';
import 'package:cinema_mate/domain/movie/movieFailure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:kt_dart/kt.dart';

import 'movie_watcher_notifier_test.mocks.dart';

@GenerateMocks([IMovieRepository])
void main() {
  late MockIMovieRepository mockMovieRepository;

  setUp(() {
    mockMovieRepository = MockIMovieRepository();
  });

  ProviderContainer setUpContainer() {
    final container = ProviderContainer(
      overrides: [
        movieWatcherProvider.overrideWith(
          (ref) => MovieWatcherNotifier(mockMovieRepository),
        ),
      ],
    );
    addTearDown(container.dispose);
    return container;
  }

  test('initial state is correct', () {
    final container = setUpContainer();
    final notifier = container.read(movieWatcherProvider.notifier);
    expect(notifier.testState, equals(const Initial()));
  });

  test('onWatchAllMoviesStarted sets state to loading and then to loadSuccess',
      () async {
    final container = setUpContainer();
    final notifier = container.read(movieWatcherProvider.notifier);

    final movieList = listOf(
      MovieInfo(
        id: 1,
        name: 'Movie Name',
        date: DateTime.now().toString(),
        time: TimeOfDay(hour: 10, minute: 30).toString(),
        genre: ['Action'],
        numberOfSeats: 100,
        image: 'path/to/image',
      ),
    );
    final movieStream =
        Stream.value(right<MovieFailure, KtList<MovieInfo>>(movieList));

    when(mockMovieRepository.watchAll()).thenAnswer((_) => movieStream);

    expectLater(
      notifier.stream,
      emitsInOrder([
        const MovieWatcherState.loading(),
        MovieWatcherState.loadSuccess(movieList),
      ]),
    );

    notifier.onWatchAllMoviesStarted();
  });

  test('onWatchAllMoviesStarted sets state to loading and then to loadFailure',
      () async {
    final container = setUpContainer();
    final notifier = container.read(movieWatcherProvider.notifier);

    final movieFailure = Stream.value(
        left<MovieFailure, KtList<MovieInfo>>(MovieFailure.networkFailure()));

    when(mockMovieRepository.watchAll()).thenAnswer((_) => movieFailure);

    expectLater(
      notifier.stream,
      emitsInOrder([
        const MovieWatcherState.loading(),
        MovieWatcherState.loadFailure(MovieFailure.networkFailure()),
      ]),
    );

    notifier.onWatchAllMoviesStarted();
  });
}
