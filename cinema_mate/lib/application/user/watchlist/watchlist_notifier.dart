import 'package:cinema_mate/application/user/watchlist/watchlist_state.dart';
import 'package:cinema_mate/domain/watchlist/i_watch_list_repository.dart';
import 'package:cinema_mate/domain/watchlist/watchlist.dart';
import 'package:cinema_mate/domain/watchlist/watchlist_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class WatchlistNotifier extends StateNotifier<WatchlistState> {
  final IWatchListRepository iWatchListRepository;
  WatchlistNotifier(this.iWatchListRepository) : super(const Initial());

  void onWatchlistStarted() {
    state = const WatchlistState.loading();
    iWatchListRepository.getWatchlist().listen((watchlistMoviesOrFailure) {
      watchlistMoviesOrFailure.fold(
          (failure) => state = WatchlistState.loadFailure(failure),
          (watchlistMovies) =>
              state = WatchlistState.loadSuccess(watchlistMovies));
    });
  }

  void onWatchlistRecieved(
      {required Either<WatchlistFailure, List<WatchlistMovie>>
          failureOrNotes}) {
    failureOrNotes.fold(
        (failure) => state = WatchlistState.loadFailure(failure),
        (watchlistMovies) =>
            state = WatchlistState.loadSuccess(watchlistMovies));
  }

  void onWatchlistAdded({required WatchlistMovie watchlistMovie}) {
    iWatchListRepository.addWatchlist(watchlistMovie.id).then(
      (failureOrSuccess) {
        failureOrSuccess.fold(
            (failure) => state = WatchlistState.loadFailure(failure),
            (_) => state = const WatchlistState.addSuccess());
      },
    );
  }

  void onWatchlistRemoved({required WatchlistMovie watchlistMovie}) {
    iWatchListRepository.removeWatchlist(watchlistMovie.id).then(
      (failureOrSuccess) {
        failureOrSuccess.fold(
          (failure) => state = WatchlistState.loadFailure(failure),
          (_) => state = const WatchlistState.removeSuccess(),
        );
      },
    );
  }
}
