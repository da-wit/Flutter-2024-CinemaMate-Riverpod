import 'package:cinema_mate/domain/crudMovie/cinema_profile/cinema_profile_failure.dart';
import 'package:cinema_mate/domain/user/cinema/cinema.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cinema_profile_checker_state.freezed.dart';

@freezed
class CinemaProfileCheckerState with _$CinemaProfileCheckerState {
  const factory CinemaProfileCheckerState.initial() = Initial;
  const factory CinemaProfileCheckerState.loading() = Loading;
  const factory CinemaProfileCheckerState.loadFailure(
      CinemaProfileFailure failure) = LoadFailure;
  const factory CinemaProfileCheckerState.loadSuccess(
      CinemaInfo cinemaProfile) = LoadSuccess;
  const factory CinemaProfileCheckerState.hasImage() = HasImage;
  const factory CinemaProfileCheckerState.doesNotHaveImage() = DoesNotHaveImage;
}
