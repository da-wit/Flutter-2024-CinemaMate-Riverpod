import 'package:freezed_annotation/freezed_annotation.dart';
part 'bottom_nav_bar_state.freezed.dart';

@freezed
class BottomNavBarState with _$BottomNavBarState {
  const factory BottomNavBarState.initial() = Initial;
  const factory BottomNavBarState.homePage() = HomePage;
  const factory BottomNavBarState.addMoviePage() = AddMoviePage;
  const factory BottomNavBarState.cinemaProfilePage() = CinemaProfielPage;
}
