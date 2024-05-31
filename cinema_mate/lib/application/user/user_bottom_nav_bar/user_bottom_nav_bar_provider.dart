import 'package:cinema_mate/application/user/user_bottom_nav_bar/user_bottom_nav_bar_notifier.dart';
import 'package:cinema_mate/application/user/user_bottom_nav_bar/user_bottom_nav_bar_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userBottomNavBarProvider =
    StateNotifierProvider<UserBottomNavBarNotifier, UserBottomNavBarState>(
        (ref) {
  return getIt<UserBottomNavBarNotifier>();
});
