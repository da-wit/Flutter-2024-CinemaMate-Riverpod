import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bottom_nav_bar_state.freezed.dart';

@freezed
class UserBottomNavBarState with _$UserBottomNavBarState {
  const factory UserBottomNavBarState.initial() = Initial;
  const factory UserBottomNavBarState.homePage() = HomePage;
  const factory UserBottomNavBarState.watchListPage() = WatchListPage;
  const factory UserBottomNavBarState.profilePage() = ProfilePage;
}
