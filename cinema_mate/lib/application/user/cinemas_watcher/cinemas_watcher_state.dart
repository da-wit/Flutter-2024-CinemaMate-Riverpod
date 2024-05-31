import 'package:cinema_mate/domain/user/cinema/cinema.dart';
import 'package:cinema_mate/domain/user/cinema/cinemaFailure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'cinemas_watcher_state.freezed.dart';

@freezed
class CinemaWatcherState with _$CinemaWatcherState {
  const factory CinemaWatcherState.initial() = Initial;
  const factory CinemaWatcherState.loading() = Loading;
  const factory CinemaWatcherState.loadSuccess(KtList<CinemaInfo> cinemas) =
      LoadSuccess;
  const factory CinemaWatcherState.loadFailure(CinemaFailure failure) =
      LoadFailure;
}
