import 'package:cinema_mate/domain/movie/movieFailure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_actor_state.freezed.dart';

@freezed
class MovieActorState with _$MovieActorState {
  const factory MovieActorState.initial() = Initial;
  const factory MovieActorState.actionInProgress() = ActionInprogress;
  const factory MovieActorState.deleteFailure(MovieFailure failure) =
      DeleteFailure;
  const factory MovieActorState.deleteSuccess() = DeleteSuccess;
}
