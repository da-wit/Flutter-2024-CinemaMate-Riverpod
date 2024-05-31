import 'dart:async';

import 'package:cinema_mate/application/admin/accounts_watcher/admin_account_watcher_state.dart';
import 'package:cinema_mate/domain/auth/admin/admin_auth_failure.dart';
import 'package:cinema_mate/domain/auth/admin/i_auth_admin_repository.dart';
import 'package:cinema_mate/domain/auth/cinema/cinema.dart';
import 'package:cinema_mate/domain/auth/user/user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class AdminAccountWatcherNotifier
    extends StateNotifier<AdminAccountsWatcherState> {
  final IAuthAdminRepository iAuthAdminRepository;

  StreamSubscription<Either<AdminAuthFailure, List<dynamic>>>?
      accountstreamSubscription;
  AdminAccountWatcherNotifier(this.iAuthAdminRepository)
      : super(const Initial());

  onWatchUserAccoountsStarted() {
    state = const AdminAccountsWatcherState.loading();

    accountstreamSubscription?.cancel();
    accountstreamSubscription = iAuthAdminRepository
        .watchAllUsers()
        .listen((failureOrUsers) => onUserAccountsRecived(failureOrUsers));
  }

  onWatchCinemaAccountsStarted() {
    state = const AdminAccountsWatcherState.loading();

    accountstreamSubscription?.cancel();
    accountstreamSubscription = iAuthAdminRepository.watchAllCinemas().listen(
        (failureOrCinemas) => onCinemaAccountsRecived(failureOrCinemas));
  }

  onUserAccountsRecived(
      Either<AdminAuthFailure, List<UserDetail>> failureOrUsers) {
    state = failureOrUsers.fold((f) => AdminAccountsWatcherState.loadFailure(f),
        (users) => AdminAccountsWatcherState.userLoadSuccess(right(users)));
  }

  onCinemaAccountsRecived(
      Either<AdminAuthFailure, List<CinemaDetail>> failureOrCinemas) {
    state = failureOrCinemas.fold(
        (f) => AdminAccountsWatcherState.loadFailure(f),
        (cinemas) =>
            AdminAccountsWatcherState.cinemaLoadSuccess(right(cinemas)));
  }

  @override
  void dispose() {
    accountstreamSubscription?.cancel();
    super.dispose();
  }
}
