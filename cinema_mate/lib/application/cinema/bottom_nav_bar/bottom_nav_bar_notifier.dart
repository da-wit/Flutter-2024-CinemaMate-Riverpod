import 'package:cinema_mate/application/cinema/bottom_nav_bar/bottom_nav_bar_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class BottomNavBarNotifier extends StateNotifier<BottomNavBarState> {
  BottomNavBarNotifier() : super(const Initial());

  void onHomeClicked() {
    state = const BottomNavBarState.homePage();
  }

  void onAddMovieClicked() {
    state = const BottomNavBarState.addMoviePage();
  }

  void onCinemaProfileClicked() {
    state = const BottomNavBarState.cinemaProfilePage();
  }
}
