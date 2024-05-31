import 'package:cinema_mate/application/cinema/bottom_nav_bar/bottom_nav_bar_provider.dart';
import 'package:cinema_mate/application/cinema/cinema_profile/profile_checker/cinema_profile_checker_provider.dart';
import 'package:cinema_mate/presentation/cinema/add_movie/add_movie_widget.dart';
import 'package:cinema_mate/presentation/cinema/home/cinema_home_page.dart';

import 'package:cinema_mate/presentation/cinema/profile/cinema_profile_page_widget.dart';
import 'package:cinema_mate/presentation/core/widgets/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:google_fonts/google_fonts.dart';

final newColor = AppColor();

class CinemaBottomNavbarWidget extends ConsumerWidget {
  const CinemaBottomNavbarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottonNotifier = ref.read(bottomNavBarProvider.notifier);
    final bottonState = ref.watch(bottomNavBarProvider);
    final cinemaProfileCheckerNotifier =
        ref.read(cinemaProfileCheckerProvider.notifier);
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
      body: bottonState.when(
          initial: () => const CinemaHomePage(),
          homePage: () => const CinemaHomePage(),
          addMoviePage: () => const AddMovieWidget(),
          cinemaProfilePage: () {
            cinemaProfileCheckerNotifier.onFetchCinemaDetails();
            return const CinemaProfilePageWidget();
          }),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottonState.when(
            initial: () => 0,
            homePage: () => 0,
            addMoviePage: () => 1,
            cinemaProfilePage: () => 2),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add Movie',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              bottonNotifier.onHomeClicked();

              break;
            case 1:
              bottonNotifier.onAddMovieClicked();

              break;
            case 2:
              bottonNotifier.onCinemaProfileClicked();

              break;
          }
        },
        backgroundColor: newColor.primary,
        selectedItemColor: newColor.white,
      ),
    );
  }
}
