import 'package:cinema_mate/application/admin/accounts_actor/admin_account_actor_state.dart';
import 'package:cinema_mate/domain/auth/admin/i_auth_admin_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class AdminAccountActorNotifier extends StateNotifier<AdminAccountsActorState> {
  final IAuthAdminRepository iAuthAdminRepository;
  AdminAccountActorNotifier(this.iAuthAdminRepository) : super(const Initial());

  void onUserDeleted({required String userId}) {
    state = const AdminAccountsActorState.actionInProgress();
    iAuthAdminRepository.deleteUser(userId: userId).then((failureOrSuccess) {
      failureOrSuccess.fold(
          (f) => state = AdminAccountsActorState.deleteFailure(f),
          (_) => state = const AdminAccountsActorState.deleteSuccess());
    });
  }

  void onUserSuspended({required String userId}) async {
    state = const AdminAccountsActorState.actionInProgress();

    await iAuthAdminRepository
        .suspendUser(userId: userId)
        .then((failureOrSuccess) {
      failureOrSuccess.fold((f) => AdminAccountsActorState.suspendFailure(f),
          (_) => const AdminAccountsActorState.suspendSuccess());
    });
  }

  void onUserUnSuspended({required String userId}) async {
    state = const AdminAccountsActorState.actionInProgress();

    await iAuthAdminRepository
        .unSuspendUser(userId: userId)
        .then((failureOrSuccess) {
      failureOrSuccess.fold((f) => AdminAccountsActorState.suspendFailure(f),
          (_) => const AdminAccountsActorState.suspendSuccess());
    });
  }

  void onCinemaDeleted({required String cinemaId}) {
    state = const AdminAccountsActorState.actionInProgress();
    iAuthAdminRepository
        .deleteCinema(cinemaId: cinemaId)
        .then((failureOrSuccess) {
      failureOrSuccess.fold(
          (f) => state = AdminAccountsActorState.deleteFailure(f),
          (_) => state = const AdminAccountsActorState.deleteSuccess());
    });
  }

  void onCinemaSuspended({required String cinemaId}) async {
    state = const AdminAccountsActorState.actionInProgress();

    await iAuthAdminRepository
        .suspendCinema(cinemaId: cinemaId)
        .then((failureOrSuccess) {
      failureOrSuccess.fold((f) => AdminAccountsActorState.suspendFailure(f),
          (_) => const AdminAccountsActorState.suspendSuccess());
    });
  }

  void onCinemaUnSuspended({required String cinemaId}) async {
    state = const AdminAccountsActorState.actionInProgress();

    await iAuthAdminRepository
        .unSuspendCinema(cinemaId: cinemaId)
        .then((failureOrSuccess) {
      failureOrSuccess.fold((f) => AdminAccountsActorState.suspendFailure(f),
          (_) => const AdminAccountsActorState.suspendSuccess());
    });
  }
}
