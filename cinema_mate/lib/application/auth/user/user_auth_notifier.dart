import 'package:cinema_mate/application/auth/user/user_auth_state.dart';
import 'package:cinema_mate/domain/auth/user/i_auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserAuthNotifier extends StateNotifier<UserAuthState> {
  final IAuthRepository iAuthRepository;
  UserAuthNotifier(this.iAuthRepository) : super(const Initial());

  UserAuthState get testState => state;

  onAuthCheckRequested() async {
    final userOption = await iAuthRepository.getSignedInUser();

    state = userOption.fold(
      () => const UserAuthState.unauthenticated(),
      (a) => const UserAuthState.authenticated(),
    );
  }

  onSignedOut() async {
    await iAuthRepository.signOut();
    state = const UserAuthState.unauthenticated();
  }

  deletedAccount() async {
    await iAuthRepository.deleteAccount();
  }
}
