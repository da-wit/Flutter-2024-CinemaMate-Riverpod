import 'package:cinema_mate/application/admin/accounts_actor/admin_account_actor_notifier.dart';
import 'package:cinema_mate/application/admin/accounts_actor/admin_account_actor_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final adminAccountActorProvider =
    StateNotifierProvider<AdminAccountActorNotifier, AdminAccountsActorState>(
        (ref) {
  return getIt<AdminAccountActorNotifier>();
});
