import 'package:cinema_mate/application/admin/accounts_watcher/admin_account_watcher_notifier.dart';
import 'package:cinema_mate/application/admin/accounts_watcher/admin_account_watcher_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final adminAccountWatcherProvider = StateNotifierProvider<
    AdminAccountWatcherNotifier, AdminAccountsWatcherState>((ref) {
  return getIt<AdminAccountWatcherNotifier>();
});
