import 'package:cinema_mate/domain/auth/user/user.dart';
import 'package:cinema_mate/domain/user/profile/user_profile_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_checker_state.freezed.dart';

@freezed
class UserProfileCheckerState with _$UserProfileCheckerState {
  const factory UserProfileCheckerState.initial() = Initial;
  const factory UserProfileCheckerState.loading() = Loading;
  const factory UserProfileCheckerState.loadFailure(
      UserProfileFailure failure) = LoadFailure;
  const factory UserProfileCheckerState.loadSuccess(User userProfile) =
      LoadSuccess;
}
