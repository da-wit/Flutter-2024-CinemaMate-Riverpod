import 'package:cinema_mate/domain/auth/admin/admin_auth_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_account_actor_state.freezed.dart';

@freezed
class AdminAccountsActorState with _$AdminAccountsActorState {
  const factory AdminAccountsActorState.initial() = Initial;
  const factory AdminAccountsActorState.actionInProgress() = ActionInProgress;
  const factory AdminAccountsActorState.deleteFailure(
      AdminAuthFailure adminAuthFailure) = DeleteFailure;
  const factory AdminAccountsActorState.deleteSuccess() = DeleteSuccess;
  const factory AdminAccountsActorState.suspendFailure(
      AdminAuthFailure adminAuthFailure) = SuspendFailure;
  const factory AdminAccountsActorState.suspendSuccess() = SuspendSuccess;
}
