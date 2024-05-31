import 'package:cinema_mate/application/admin/accounts_watcher/admin_account_watcher_provider.dart';
import 'package:cinema_mate/application/auth/cinema/cinema_auth_provider.dart';
import 'package:cinema_mate/application/user/cinema_movies_watcher/cinema_movies_watcher_provider.dart';
import 'package:cinema_mate/domain/movie/movie.dart';
import 'package:cinema_mate/domain/user/cinema/cinema.dart';
import 'package:cinema_mate/presentation/admin/admin_page.dart';
import 'package:cinema_mate/presentation/auth/admin/sign_in/admin_sign_in_page.dart';
import 'package:cinema_mate/presentation/auth/cinema/signin/cinema_signin_page.dart';
import 'package:cinema_mate/presentation/auth/user/signin/signin_page.dart';
import 'package:cinema_mate/presentation/cinema/cinema_bottom_navbar/cinema_bottom_navbar_page.dart';
import 'package:cinema_mate/presentation/cinema/edit_movie/edit_movie_page_widget.dart';
import 'package:cinema_mate/presentation/cinema/profile/change_cinema_name/change_cinema_name.dart';
import 'package:cinema_mate/presentation/cinema/profile/change_password/change_cinema_password.dart';
import 'package:cinema_mate/presentation/cinema/profile/cinema_profile_page.dart';
import 'package:cinema_mate/presentation/core/registration/registration_page.dart';
import 'package:cinema_mate/presentation/splash/splash.dart';
import 'package:cinema_mate/presentation/user/cinemas/cinema_description_page.dart';
import 'package:cinema_mate/presentation/user/cinemas/cinema_movies_list_page.dart';
import 'package:cinema_mate/presentation/user/profile/change_password/change_user_password_page.dart';
import 'package:cinema_mate/presentation/user/profile/change_username/user_change_user_name_page.dart';
import 'package:cinema_mate/presentation/user/user_bottom_navbar/user_bottom_navbar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(routes: [
  GoRoute(
    name: 'splash',
    path: '/',
    pageBuilder: (context, state) {
      return MaterialPage(child: Consumer(builder: (context, ref, child) {
        final cinemaAuthNotifier = ref.read(cinemaAuthProvider.notifier);

        Future.microtask(() {
          cinemaAuthNotifier.onAuthCheckRequested();
        });
        return const SplashPage();
      }));
    },
  ),
  GoRoute(
    name: 'registration',
    path: '/registration',
    pageBuilder: (context, state) {
      return const MaterialPage(child: RegistrationPage());
    },
  ),
  GoRoute(
    name: 'userLogin',
    path: '/user/login',
    pageBuilder: (context, state) {
      return const MaterialPage(child: UserSignInPage());
    },
  ),
  GoRoute(
    name: 'cinemaLogin',
    path: '/cinema/login',
    pageBuilder: (context, state) {
      return const MaterialPage(child: CinemaSign());
    },
  ),
  GoRoute(
    name: 'adminLogin',
    path: '/admin/login',
    pageBuilder: (context, state) {
      return const MaterialPage(
        child: AdminSignInPage(),
      );
    },
  ),
  GoRoute(
      name: 'cinemaHomepage',
      path: '/cinema/home',
      pageBuilder: (context, state) {
        return const MaterialPage(child: CinemaBottomNavbarPage());
      }),
  GoRoute(
    name: 'userHomepage',
    path: '/user/home',
    pageBuilder: (context, state) {
      return MaterialPage(child: Consumer(builder: (context, ref, child) {
        return const UserBottomNavbarPage();
      }));
    },
  ),
  GoRoute(
      name: 'editMovie',
      path: '/cinema/edit_movie',
      pageBuilder: (context, state) {
        final movie = state.extra as MovieInfo;
        return MaterialPage(child: EditMoviePageWidget(movie: movie));
      }),
  GoRoute(
    name: 'cinemaProfile',
    path: '/cinema/profile',
    pageBuilder: (context, state) {
      return const MaterialPage(child: CinemaProfilePage());
    },
  ),
  GoRoute(
    name: "cinemaDetails",
    path: '/cinemas/details',
    pageBuilder: (context, state) {
      final cinema = state.extra as CinemaInfo;
      return MaterialPage(child: CinemaDescriptionPage(cinemaInfo: cinema));
    },
  ),
  GoRoute(
    name: 'changeCinemaPassword',
    path: '/cinema/change_password',
    pageBuilder: (context, state) {
      return const MaterialPage(
        child: ChangeCinemaPassword(),
      );
    },
  ),
  GoRoute(
    name: 'changeUserPassword',
    path: '/user/change_password',
    pageBuilder: (context, state) {
      return const MaterialPage(
        child: ChangeUserPasswordPage(),
      );
    },
  ),
  GoRoute(
    name: 'changeCinemaName',
    path: '/cinema/change_name',
    pageBuilder: (context, state) {
      return const MaterialPage(
        child: ChangeCinemaName(),
      );
    },
  ),
  GoRoute(
    name: 'changeUsername',
    path: '/user/change_Username',
    pageBuilder: (context, state) {
      return const MaterialPage(
        child: UserChangeUserNamePage(),
      );
    },
  ),
  GoRoute(
    name: 'cinemaMoviesList',
    path: '/users/cinema/:id',
    pageBuilder: (context, state) {
      final id = state.pathParameters['id']!;
      return MaterialPage(child: Consumer(builder: (context, ref, child) {
        final cinemaMoviesWatcherNotifier =
            ref.read(cinemaMoviesWatcherProvider.notifier);

        Future.microtask(() {
          cinemaMoviesWatcherNotifier.onWatchAllCinemaMoviesStarted(id: id);
        });

        return const CinemaMoviesListPage();
      }));
    },
  ),
  GoRoute(
    name: 'adminPage',
    path: '/admin/main',
    pageBuilder: (context, state) {
      return MaterialPage(child: Consumer(builder: (context, ref, chid) {
        final adminNotifier = ref.read(adminAccountWatcherProvider.notifier);

        Future.microtask(() {
          adminNotifier.onWatchUserAccoountsStarted();
        });

        return const AdminPage();
      }));
    },
  ),
]);
