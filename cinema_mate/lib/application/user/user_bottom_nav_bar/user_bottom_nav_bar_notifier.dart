import 'package:cinema_mate/application/user/user_bottom_nav_bar/user_bottom_nav_bar_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserBottomNavBarNotifier extends StateNotifier<UserBottomNavBarState> {
  UserBottomNavBarNotifier() : super(const Initial());

  void onHomePageSelected() {
    state = const UserBottomNavBarState.homePage();
  }

  void onWatchListPageSelected() {
    state = const UserBottomNavBarState.watchListPage();
  }

  void onProfilePageSelected() {
    state = const UserBottomNavBarState.profilePage();
  }
}
