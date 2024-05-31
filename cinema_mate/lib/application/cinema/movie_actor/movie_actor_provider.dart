import 'package:cinema_mate/application/cinema/movie_actor/movie_actor_notifier.dart';
import 'package:cinema_mate/application/cinema/movie_actor/movie_actor_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieActorProvider =
    StateNotifierProvider<MovieActorNotifier, MovieActorState>((ref) {
  return getIt<MovieActorNotifier>();
});
