import 'package:cinema_mate/application/user/watchlist/watchlist_notifier.dart';
import 'package:cinema_mate/application/user/watchlist/watchlist_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final watchlistProvider =
    StateNotifierProvider<WatchlistNotifier, WatchlistState>((ref) {
  return getIt<WatchlistNotifier>();
});
