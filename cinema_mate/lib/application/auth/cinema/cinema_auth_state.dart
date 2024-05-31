import 'package:freezed_annotation/freezed_annotation.dart';

part 'cinema_auth_state.freezed.dart';

@freezed
class CinemaAuthState with _$CinemaAuthState {
  const factory CinemaAuthState.initial() = Initial;
  const factory CinemaAuthState.authenticated() = Authenticated;
  const factory CinemaAuthState.unauthenticated() = Unauthenticated;
}
