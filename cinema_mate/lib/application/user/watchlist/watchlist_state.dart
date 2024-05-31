import 'package:cinema_mate/domain/watchlist/watchlist.dart';
import 'package:cinema_mate/domain/watchlist/watchlist_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watchlist_state.freezed.dart';

@freezed
class WatchlistState with _$WatchlistState {
  const factory WatchlistState.initial() = Initial;
  const factory WatchlistState.loading() = Loading;
  const factory WatchlistState.addSuccess() = AddSuccess;
  const factory WatchlistState.movieAlreadyInWatchlist() =
      MovieAlreadyInWatchlist;
  const factory WatchlistState.unlikeSuccess() = UnlikeSuccess;
  const factory WatchlistState.removeSuccess() = RemoveSuccess;
  const factory WatchlistState.loadSuccess(
      List<WatchlistMovie> watchlistMovies) = LoadSuccess;
  const factory WatchlistState.loadFailure(WatchlistFailure watchlistFailure) =
      LoadFailure;
}
