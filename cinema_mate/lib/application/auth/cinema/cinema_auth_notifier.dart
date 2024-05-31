import 'package:cinema_mate/application/auth/cinema/cinema_auth_state.dart';
import 'package:cinema_mate/domain/auth/cinema/i_cinema_auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class CinemaAuthNotifier extends StateNotifier<CinemaAuthState> {
  final ICinemaAuthRepository iCinemaAuthRepository;
  CinemaAuthNotifier(this.iCinemaAuthRepository) : super(const Initial());

  void onAuthCheckRequested() async {
    final userOption = await iCinemaAuthRepository.getSignedInUser();

    state = userOption.fold(() => const CinemaAuthState.unauthenticated(),
        (a) => const CinemaAuthState.authenticated());
  }

  void onSignOut() async {
    await iCinemaAuthRepository.signOut();
    state = const CinemaAuthState.unauthenticated();
  }

  void onDeleteAccount() async {
    await iCinemaAuthRepository.deleteAccount();
  }
}
