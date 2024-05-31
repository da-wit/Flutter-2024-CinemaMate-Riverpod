import 'package:cinema_mate/application/user/cinemas_watcher/cinemas_watcher_state.dart';
import 'package:cinema_mate/domain/user/cinema/cinema.dart';
import 'package:cinema_mate/domain/user/cinema/cinemaFailure.dart';
import 'package:cinema_mate/domain/user/cinema/i_cinema_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@injectable
class CinemasWatcherNotifier extends StateNotifier<CinemaWatcherState> {
  final ICinemaRepository iCinemaRepository;
  CinemasWatcherNotifier(this.iCinemaRepository) : super(const Initial());

  onWatchAllCinemasStarted() async {
    state = const CinemaWatcherState.loading();
    iCinemaRepository.watchAll().listen((failureOrCinemas) {
      onCinemasRecieved(failureOrCinemas);
    });
  }

  onCinemasRecieved(
      Either<CinemaFailure, KtList<CinemaInfo>> failureOrCinemas) {
    state = failureOrCinemas.fold(
      (f) {
        return CinemaWatcherState.loadFailure(f);
      },
      (cinemas) {
        return CinemaWatcherState.loadSuccess(cinemas);
      },
    );
  }
}
