import 'package:cinema_mate/application/role/role_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class RoleNotifier extends StateNotifier<RoleState> {
  RoleNotifier() : super(const Initial());

  void onCinemaClicked() {
    state = const RoleState.cinema();
  }

  void onUserClicked() {
    state = const RoleState.user();
  }

  void onAdminClicked() {
    state = const RoleState.admin();
  }
}
