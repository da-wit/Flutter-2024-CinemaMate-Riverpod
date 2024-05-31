import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_auth_state.freezed.dart';

@freezed
class AdminAuthState with _$AdminAuthState {
  const factory AdminAuthState.initial() = Initial;
  const factory AdminAuthState.authenticated() = Authenticated;
  const factory AdminAuthState.unauthenticated() = Unauthenticated;
}
