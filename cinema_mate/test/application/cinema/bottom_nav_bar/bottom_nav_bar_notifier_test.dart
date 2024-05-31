import 'package:cinema_mate/application/cinema/bottom_nav_bar/bottom_nav_bar_notifier.dart';
import 'package:cinema_mate/application/cinema/bottom_nav_bar/bottom_nav_bar_provider.dart';
import 'package:cinema_mate/application/cinema/bottom_nav_bar/bottom_nav_bar_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ProviderContainer setUpContainer() {
    final container = ProviderContainer(
      overrides: [
        bottomNavBarProvider.overrideWith(
          (ref) => BottomNavBarNotifier(),
        ),
      ],
    );
    addTearDown(container.dispose);
    return container;
  }

  group('BottomNavBarNotifier', () {
    test('initial state is correct', () {
      final container = setUpContainer();
      final notifier = container.read(bottomNavBarProvider.notifier);

      expect(notifier.testState, equals(const Initial()));
    });

    test('onHomeClicked updates state to homePage', () {
      final container = setUpContainer();
      final notifier = container.read(bottomNavBarProvider.notifier);

      notifier.onHomeClicked();

      expect(notifier.testState, equals(const BottomNavBarState.homePage()));
    });

    test('onAddMovieClicked updates state to addMoviePage', () {
      final container = setUpContainer();
      final notifier = container.read(bottomNavBarProvider.notifier);

      notifier.onAddMovieClicked();

      expect(
          notifier.testState, equals(const BottomNavBarState.addMoviePage()));
    });

    test('onCinemaProfileClicked updates state to cinemaProfilePage', () {
      final container = setUpContainer();
      final notifier = container.read(bottomNavBarProvider.notifier);

      notifier.onCinemaProfileClicked();

      expect(notifier.testState,
          equals(const BottomNavBarState.cinemaProfilePage()));
    });
  });
}
