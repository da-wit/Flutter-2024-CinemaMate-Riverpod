import 'package:cinema_mate/application/user/user_profile/user_profile_checker/user_profile_checker_state.dart';
import 'package:cinema_mate/domain/user/profile/user_profile_failure.dart';
import 'package:cinema_mate/domain/user/profile/user_profile_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserProfileCheckerNotifier
    extends StateNotifier<UserProfileCheckerState> {
  final IUserProfileRepository iUserProfileRepository;
  UserProfileCheckerNotifier(this.iUserProfileRepository)
      : super(const Initial());

  onFetchUserDetails() async {
    state = UserProfileCheckerState.loading();
    final userProfile = await iUserProfileRepository.fetchUserProfile();
    state = userProfile.fold(
      () => const UserProfileCheckerState.loadFailure(
        UserProfileFailure.serverError(),
      ),
      (user) => UserProfileCheckerState.loadSuccess(user),
    );
  }
}
