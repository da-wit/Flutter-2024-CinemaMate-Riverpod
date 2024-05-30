import 'package:cinema_mate/application/account_management/manage_user_account_notifier.dart';
import 'package:cinema_mate/application/account_management/manage_user_account_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final manageUserAccountProvider =
    StateNotifierProvider<ManageUserAccountNotifier, ManageUserAccountState>(
        (ref) {
  return getIt<ManageUserAccountNotifier>();
});
