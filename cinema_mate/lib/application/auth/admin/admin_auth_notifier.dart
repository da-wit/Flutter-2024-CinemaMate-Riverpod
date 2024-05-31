import 'package:cinema_mate/application/auth/admin/admin_auth_state.dart';
import 'package:cinema_mate/domain/auth/admin/i_auth_admin_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class AdminAuthNotifier extends StateNotifier<AdminAuthState> {
  final IAuthAdminRepository iAuthAdminRepository;
  AdminAuthNotifier(this.iAuthAdminRepository)
      : super(const AdminAuthState.initial());

  void onSignedOut() async {
    await iAuthAdminRepository.signOut();
    state = const AdminAuthState.unauthenticated();
  }
}
