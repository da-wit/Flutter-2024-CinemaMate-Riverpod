import 'package:cinema_mate/domain/auth/admin/admin_auth_failure.dart';
import 'package:cinema_mate/domain/auth/cinema/cinema.dart';
import 'package:cinema_mate/domain/auth/user/user.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_account_watcher_state.freezed.dart';

@freezed
class AdminAccountsWatcherState with _$AdminAccountsWatcherState {
  const factory AdminAccountsWatcherState.initial() = Initial;
  const factory AdminAccountsWatcherState.loading() = Loading;
  const factory AdminAccountsWatcherState.userLoadSuccess(
          Either<AdminAuthFailure, List<UserDetail>> failureOrUsers) =
      UserLoadSuccess;
  const factory AdminAccountsWatcherState.cinemaLoadSuccess(
          Either<AdminAuthFailure, List<CinemaDetail>> failureOrCinemas) =
      CinemaLoadSuccess;
  const factory AdminAccountsWatcherState.loadFailure(
      AdminAuthFailure adminAuthFailure) = LoadFailure;
}
