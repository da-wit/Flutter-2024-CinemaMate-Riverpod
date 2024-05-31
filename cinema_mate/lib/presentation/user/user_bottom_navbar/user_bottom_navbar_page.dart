import 'package:cinema_mate/application/user/cinemas_watcher/cinemas_watcher_provider.dart';
import 'package:cinema_mate/application/user/user_bottom_nav_bar/user_bottom_nav_bar_provider.dart';
import 'package:cinema_mate/application/user/user_profile/user_profile_checker/user_profile_checker_provider.dart';
import 'package:cinema_mate/application/user/watchlist/watchlist_provider.dart';
import 'package:cinema_mate/presentation/core/widgets/app_color.dart';
import 'package:cinema_mate/presentation/user/home/user_home_page.dart';
import 'package:cinema_mate/presentation/user/profile/userProfile.dart';
// import 'package:cinema_mate/presentation/user/profile/user_profile_page.dart';
import 'package:cinema_mate/presentation/user/watch_list/user_watch_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

final newColor = AppColor();

class UserBottomNavbarPage extends ConsumerWidget {
  const UserBottomNavbarPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userNavNotifier = ref.read(userBottomNavBarProvider.notifier);
    final userNavState = ref.watch(userBottomNavBarProvider);
    final userProfileCheckerNotifier = ref.read(userProfileProvider.notifier);
    final cinemaWatchNotifier = ref.read(cinemasWatcherProvider.notifier);
    final watchlistNotifier = ref.read(watchlistProvider.notifier);

    // cinemaWatchNotifier.onWatchAllCinemasStarted();

    Future.microtask(() {
      watchlistNotifier.onWatchlistStarted();
    });

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          'CinemaMate',
          style: GoogleFonts.josefinSans(
            color: newColor.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: newColor.bg,
      ),
      backgroundColor: newColor.bg,
      body: userNavState.when(
          initial: () {
            cinemaWatchNotifier.onWatchAllCinemasStarted();
            return const UserHomePage();
          },
          homePage: () => const UserHomePage(),
          watchListPage: () {
            return const UserWatchListPage();
          },
          profilePage: () {
            // userProfileCheckerNotifier.onFetchUserDetails();

            // userProfileCheckerNotifier.onFetchUserDetails();

            Future.microtask(() {
              userProfileCheckerNotifier.onFetchUserDetails();
            });
            return const UserProfile();
          }),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: userNavState.when(
          initial: () => 0,
          homePage: () => 0,
          watchListPage: () => 1,
          profilePage: () => 2,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Watchlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              userNavNotifier.onHomePageSelected();
              break;
            case 1:
              userNavNotifier.onWatchListPageSelected();
              break;
            case 2:
              userNavNotifier.onProfilePageSelected();
              break;
          }
        },
        backgroundColor: newColor.primary,
        selectedItemColor: newColor.white,
      ),
    );
  }
}
