import 'package:cinema_mate/application/role/role_notifier.dart';
import 'package:cinema_mate/application/role/role_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final roleProvider = StateNotifierProvider<RoleNotifier, RoleState>((ref) {
  return getIt<RoleNotifier>();
});
