import 'dart:io';

import 'package:cinema_mate/application/cinema/cinema_profile/profile_checker/cinema_profile_checker_provider.dart';
import 'package:cinema_mate/application/cinema/cinema_profile/profile_checker/cinema_profile_checker_state.dart';
import 'package:cinema_mate/application/cinema/cinema_profile/profile_checker/cinema_profile_checker_notifier.dart';
import 'package:cinema_mate/domain/crudMovie/cinema_profile/cinema_profile_failure.dart';
import 'package:cinema_mate/domain/crudMovie/cinema_profile/i_cinema_profile_repository.dart';
import 'package:cinema_mate/domain/user/cinema/cinema.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'cinema_profile_checker_notifier_test.mocks.dart';

@GenerateMocks([ICinemaProfileRepository])
void main() {
  final mockCinemaProfileRepository = MockICinemaProfileRepository();

  const tCinemaInfo = CinemaInfo(
    id: 1,
    cinemaName: 'cinema Name',
    imagePath: '',
    description: 'cinema description',
    email: 'test@test.com',
  );

  const tCinemaInfoImageUpload = CinemaInfo(
    id: 1,
    cinemaName: 'cinema Name',
    imagePath: 'test',
    description: 'cinema description',
    email: 'test@test.com',
  );

  final tFile = File('test');
  ProviderContainer setUpContainer() {
    final container = ProviderContainer(
      overrides: [
        cinemaProfileCheckerProvider.overrideWith(
          (ref) => CinemaProfileCheckerNotifier(mockCinemaProfileRepository),
        ),
      ],
    );
    addTearDown(container.dispose);
    return container;
  }

  test(
    'emits [loading, loadSuccess] when fetchCinemaDetails is called and fetching is successful',
    () async {
      when(mockCinemaProfileRepository.fetchCienmaProfile())
          .thenAnswer((_) async => right(tCinemaInfo));

      final container = setUpContainer();
      final notifier = container.read(cinemaProfileCheckerProvider.notifier);

      notifier.onFetchCinemaDetails();

      expect(
        container.read(cinemaProfileCheckerProvider),
        const CinemaProfileCheckerState.loading(),
      );

      await untilCalled(mockCinemaProfileRepository.fetchCienmaProfile());

      expect(
        container.read(cinemaProfileCheckerProvider),
        const CinemaProfileCheckerState.loadSuccess(tCinemaInfo),
      );
    },
  );

  test(
    'emits [loading, loadFailure] when fetchCinemaDetails is called and fetching fails',
    () async {
      when(mockCinemaProfileRepository.fetchCienmaProfile()).thenAnswer(
          (_) async => left(const CinemaProfileFailure.serverError()));

      final container = setUpContainer();
      final notifier = container.read(cinemaProfileCheckerProvider.notifier);

      notifier.onFetchCinemaDetails();

      expect(
        container.read(cinemaProfileCheckerProvider),
        const CinemaProfileCheckerState.loading(),
      );

      await untilCalled(mockCinemaProfileRepository.fetchCienmaProfile());

      expect(
        container.read(cinemaProfileCheckerProvider),
        const CinemaProfileCheckerState.loadFailure(
            CinemaProfileFailure.serverError()),
      );
    },
  );

  test(
    'emits [loading, loadSuccess] when uploadImage is called and uploading is successful',
    () async {
      when(mockCinemaProfileRepository.uploadImage(tFile))
          .thenAnswer((_) async => right(tCinemaInfo));

      final container = setUpContainer();
      final notifier = container.read(cinemaProfileCheckerProvider.notifier);

      notifier.onUploadImage(tFile);

      expect(
        container.read(cinemaProfileCheckerProvider),
        const CinemaProfileCheckerState.loading(),
      );

      await untilCalled(mockCinemaProfileRepository.uploadImage(tFile));

      expect(
        container.read(cinemaProfileCheckerProvider),
        const CinemaProfileCheckerState.loadSuccess(tCinemaInfoImageUpload),
      );
    },
  );

  test(
    'emits [loading, loadFailure] when uploadImage is called and uploading fails',
    () async {
      when(mockCinemaProfileRepository.uploadImage(tFile)).thenAnswer(
          (_) async => left(const CinemaProfileFailure.serverError()));

      final container = setUpContainer();
      final notifier = container.read(cinemaProfileCheckerProvider.notifier);

      notifier.onUploadImage(tFile);

      expect(
        container.read(cinemaProfileCheckerProvider),
        const CinemaProfileCheckerState.loading(),
      );

      await untilCalled(mockCinemaProfileRepository.uploadImage(tFile));

      expect(
        container.read(cinemaProfileCheckerProvider),
        const CinemaProfileCheckerState.loadFailure(
            CinemaProfileFailure.serverError()),
      );
    },
  );
}
