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
    iWatchListRepository.getWatchlist().listen(
      (watchlistMoviesOrFailure) {
        print('object');
        onWatchlistRecieved(failureOrNotes: watchlistMoviesOrFailure);
        // watchlistMoviesOrFailure.fold(
        //     (failure) => state = WatchlistState.loadFailure(failure),
        //     (watchlistMovies) =>
        //         state = WatchlistState.loadSuccess(watchlistMovies));
      },
      onError: (error) {
        print('An error occurred: $error');
      },
      onDone: () {
        print('Stream is done emitting data');
      },
    );
  }

  void onWatchlistRecieved(
      {required Either<WatchlistFailure, List<WatchlistMovie>>
          failureOrNotes}) {
    failureOrNotes.fold(
        (failure) => state = WatchlistState.loadFailure(failure),
        (watchlistMovies) =>
            state = WatchlistState.loadSuccess(watchlistMovies));
  }

  void onWatchlistAdded({required int addedMovieId}) {
    iWatchListRepository.addWatchlist(addedMovieId).then(
      (failureOrSuccess) {
        failureOrSuccess.fold((failure) {
          if (failure == const WatchlistFailure.movieAlreadyInWatchlist()) {
            print('already on watch');
            state = const WatchlistState.movieAlreadyInWatchlist();
          } else {
            state = WatchlistState.loadFailure(failure);
          }
        }, (_) {
          return state = const WatchlistState.addSuccess();
        });
      },
    );
  }

  void onWatchlistRemoved({required int removeMovieId}) {
    iWatchListRepository.removeWatchlist(removeMovieId).then(
      (failureOrSuccess) {
        failureOrSuccess.fold(
          (failure) => state = WatchlistState.loadFailure(failure),
          (_) => onWatchlistStarted(),
        );
      },
    );
  }
}

// class WatchlistEvent with _$WatchlistEvent {
//   const factory WatchlistEvent.watchlistStarted() = WatchlistStarted;

//   const factory WatchlistEvent.watchlistRecieved(
//     Either<WatchlistFailure, List<WatchlistMovie>> failureOrWatchlistMovies,
//   ) = WatchlistRecieved;

//   const factory WatchlistEvent.watchlistAdded(
//     int addMovieId,
//   ) = WatchlistAdded;

//   const factory WatchlistEvent.watchlistRemoved(
//     int removeMovieId,
//   ) = WatchlistRemoved;
// }
