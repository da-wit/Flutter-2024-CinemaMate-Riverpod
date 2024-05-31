import 'package:cinema_mate/application/user/current_movie/current_movie_notifier.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentMovieProvider =
    StateNotifierProvider<CurrentMovieNotifier, int>((ref) {
  return getIt<CurrentMovieNotifier>();
});
