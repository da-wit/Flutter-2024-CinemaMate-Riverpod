import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_auth_state.freezed.dart';

@freezed
class UserAuthState with _$UserAuthState {
  const factory UserAuthState.initial() = Initial;
  const factory UserAuthState.authenticated() = Authenticated;
  const factory UserAuthState.unauthenticated() = Unauthenticated;
}
