import 'package:cinema_mate/application/cinema/bottom_nav_bar/bottom_nav_bar_notifier.dart';
import 'package:cinema_mate/application/cinema/bottom_nav_bar/bottom_nav_bar_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavBarProvider =
    StateNotifierProvider<BottomNavBarNotifier, BottomNavBarState>((ref) {
  return getIt<BottomNavBarNotifier>();
});
