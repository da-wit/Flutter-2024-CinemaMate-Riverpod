import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_state.freezed.dart';

@freezed
class RoleState with _$RoleState {
  const factory RoleState.initial() = Initial;
  const factory RoleState.user() = User;
  const factory RoleState.cinema() = Cinema;
  const factory RoleState.admin() = Admin;
}
