import 'package:cinema_mate/application/cinema/movie_actor/movie_actor_state.dart';
import 'package:cinema_mate/domain/movie/i_movieRepository.dart';
import 'package:cinema_mate/domain/movie/movie.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class MovieActorNotifier extends StateNotifier<MovieActorState> {
  final IMovieRepository iMovieRepository;
  MovieActorNotifier(this.iMovieRepository) : super(const Initial());

  void onMovieActorEvent(MovieInfo movie) async {
    state = const MovieActorState.actionInProgress();

    final possibleFailure = await iMovieRepository.deleteMovie(movie);

    state = possibleFailure.fold(
      (failure) => MovieActorState.deleteFailure(failure),
      (_) => const MovieActorState.deleteSuccess(),
    );
  }
}
