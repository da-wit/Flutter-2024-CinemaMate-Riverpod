// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cinema_mate/application/admin/accounts_actor/admin_account_actor_notifier.dart'
    as _i26;
import 'package:cinema_mate/application/admin/accounts_watcher/admin_account_watcher_notifier.dart'
    as _i27;
import 'package:cinema_mate/application/auth/admin/admin_auth_notifier.dart'
    as _i28;
import 'package:cinema_mate/application/auth/admin/sign_in_form/admin_sign_in_notifier.dart'
    as _i29;
import 'package:cinema_mate/application/auth/cinema/cinema_auth_notifier.dart'
    as _i46;
import 'package:cinema_mate/application/auth/cinema/regsitration_form/cinema_registration_notifier.dart'
    as _i47;
import 'package:cinema_mate/application/auth/cinema/sign_in_form/cinema_sign_in_notifier.dart'
    as _i48;
import 'package:cinema_mate/application/auth/user/account_management/manage_user_account_notifier.dart'
    as _i32;
import 'package:cinema_mate/application/auth/user/register_form/register_form_norifier.dart'
    as _i33;
import 'package:cinema_mate/application/auth/user/sign_in_form/sign_in_form_notifier.dart'
    as _i34;
import 'package:cinema_mate/application/auth/user/user_auth_notifier.dart'
    as _i35;
import 'package:cinema_mate/application/cinema/bottom_nav_bar/bottom_nav_bar_notifier.dart'
    as _i3;
import 'package:cinema_mate/application/cinema/cinema_movie/add_movie/add_movie_notifier.dart'
    as _i62;
import 'package:cinema_mate/application/cinema/cinema_movie/delete_movie/delete_movie_notifier.dart'
    as _i9;
import 'package:cinema_mate/application/cinema/cinema_movie/update_movie/update_movie_notifier.dart'
    as _i42;
import 'package:cinema_mate/application/cinema/cinema_profile/change_cinema_name/change_cinema_name_notifier.dart'
    as _i49;
import 'package:cinema_mate/application/cinema/cinema_profile/change_password/change_cinema_password_notifier.dart'
    as _i50;
import 'package:cinema_mate/application/cinema/cinema_profile/profile_checker/cinema_profile_checker_notifier.dart'
    as _i59;
import 'package:cinema_mate/application/cinema/movie_actor/movie_actor_notifier.dart'
    as _i60;
import 'package:cinema_mate/application/cinema/movie_watcher/movie_watcher_notifier.dart'
    as _i61;
import 'package:cinema_mate/application/role/role_notifier.dart' as _i4;
import 'package:cinema_mate/application/user/cinema_movies_watcher/cinema_movies_watcher_notifier.dart'
    as _i57;
import 'package:cinema_mate/application/user/cinemas_watcher/cinemas_watcher_notifier.dart'
    as _i56;
import 'package:cinema_mate/application/user/current_movie/current_movie_notifier.dart'
    as _i5;
import 'package:cinema_mate/application/user/user_bottom_nav_bar/user_bottom_nav_bar_notifier.dart'
    as _i6;
import 'package:cinema_mate/application/user/user_profile/change_password/change_user_password_notifier.dart'
    as _i36;
import 'package:cinema_mate/application/user/user_profile/change_user_name/change_user_name_notifier.dart'
    as _i37;
import 'package:cinema_mate/application/user/user_profile/user_profile_checker/user_profile_checker_notifier.dart'
    as _i58;
import 'package:cinema_mate/application/user/watchlist/watchlist_notifier.dart'
    as _i53;
import 'package:cinema_mate/domain/auth/admin/i_auth_admin_repository.dart'
    as _i16;
import 'package:cinema_mate/domain/auth/cinema/i_cinema_auth_repository.dart'
    as _i44;
import 'package:cinema_mate/domain/auth/user/i_auth_repository.dart' as _i18;
import 'package:cinema_mate/domain/crudMovie/add_movie/I_add_movie_repository.dart'
    as _i51;
import 'package:cinema_mate/domain/crudMovie/cinema_profile/i_cinema_profile_repository.dart'
    as _i40;
import 'package:cinema_mate/domain/crudMovie/delete_movie/i_delete_movie_repository.dart'
    as _i10;
import 'package:cinema_mate/domain/crudMovie/update_movie/i_update_movie_repository.dart'
    as _i22;
import 'package:cinema_mate/domain/movie/i_movieRepository.dart' as _i54;
import 'package:cinema_mate/domain/movie/movie.dart' as _i43;
import 'package:cinema_mate/domain/user/cinema/i_cinema_repository.dart'
    as _i30;
import 'package:cinema_mate/domain/user/profile/user_profile_repository.dart'
    as _i38;
import 'package:cinema_mate/domain/watchlist/i_watch_list_repository.dart'
    as _i24;
import 'package:cinema_mate/infrastructure/auth/admin/admin_auth_repository.dart'
    as _i17;
import 'package:cinema_mate/infrastructure/auth/admin/data_sources/admin_auth_api.dart'
    as _i11;
import 'package:cinema_mate/infrastructure/auth/cinema/cinema_auth_repository.dart'
    as _i45;
import 'package:cinema_mate/infrastructure/auth/cinema/data_sources/cinema_auth_api.dart'
    as _i12;
import 'package:cinema_mate/infrastructure/auth/user/auth_repository.dart'
    as _i19;
import 'package:cinema_mate/infrastructure/auth/user/data_sources/auth_api.dart'
    as _i13;
import 'package:cinema_mate/infrastructure/auth/user/data_sources/local_data_source.dart'
    as _i21;
import 'package:cinema_mate/infrastructure/cinema/cinema_add_movie_repository.dart'
    as _i52;
import 'package:cinema_mate/infrastructure/cinema/cinema_profile_repository.dart'
    as _i41;
import 'package:cinema_mate/infrastructure/cinema/cinema_update_movie_repository.dart'
    as _i23;
import 'package:cinema_mate/infrastructure/cinema/data_source/cinema_api.dart'
    as _i14;
import 'package:cinema_mate/infrastructure/core/data_source_injectable_module.dart'
    as _i63;
import 'package:cinema_mate/infrastructure/movie/data_sources/movie_api.dart'
    as _i20;
import 'package:cinema_mate/infrastructure/movie/movie_repository.dart' as _i55;
import 'package:cinema_mate/infrastructure/user/cinemas/user_cinema_repository.dart'
    as _i31;
import 'package:cinema_mate/infrastructure/user/user_profile/user_profile_repository.dart'
    as _i39;
import 'package:cinema_mate/infrastructure/user/watchlist/data_source/watchlist_api.dart'
    as _i15;
import 'package:cinema_mate/infrastructure/user/watchlist/watch_list_repository.dart'
    as _i25;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataSourceInjectableModule = _$DataSourceInjectableModule();
    gh.factory<_i3.BottomNavBarNotifier>(() => _i3.BottomNavBarNotifier());
    gh.factory<_i4.RoleNotifier>(() => _i4.RoleNotifier());
    gh.factory<_i5.CurrentMovieNotifier>(() => _i5.CurrentMovieNotifier());
    gh.factory<_i6.UserBottomNavBarNotifier>(
        () => _i6.UserBottomNavBarNotifier());
    gh.lazySingleton<_i7.Client>(() => dataSourceInjectableModule.client);
    gh.lazySingleton<_i8.FlutterSecureStorage>(
        () => dataSourceInjectableModule.secureStorage);
    gh.factory<_i9.DeleteMovieNotifier>(
        () => _i9.DeleteMovieNotifier(gh<_i10.IDeleteMovierepository>()));
    gh.factory<_i11.AdminAuthApi>(
        () => _i11.AdminAuthApi(client: gh<_i7.Client>()));
    gh.factory<_i12.CinemaAuthApiImplementations>(
        () => _i12.CinemaAuthApiImplementations(client: gh<_i7.Client>()));
    gh.factory<_i13.AuthApiImplementations>(
        () => _i13.AuthApiImplementations(client: gh<_i7.Client>()));
    gh.factory<_i14.CinemaApiImplementations>(
        () => _i14.CinemaApiImplementations(client: gh<_i7.Client>()));
    gh.factory<_i15.WatchlistApiImplementations>(
        () => _i15.WatchlistApiImplementations(client: gh<_i7.Client>()));
    gh.lazySingleton<_i16.IAuthAdminRepository>(() => _i17.AdminAuthRepository(
          gh<_i11.AdminAuthApi>(),
          gh<_i8.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i18.IAuthRepository>(() => _i19.AuthRepository(
          gh<_i13.AuthApiImplementations>(),
          gh<_i8.FlutterSecureStorage>(),
        ));
    gh.factory<_i20.MovieApiImplementaions>(() => _i20.MovieApiImplementaions(
          client: gh<_i7.Client>(),
          watchlistApiImplementations: gh<_i15.WatchlistApiImplementations>(),
        ));
    gh.factory<_i21.LocalSecureStorage>(() =>
        _i21.LocalSecureStorage(secureStorage: gh<_i8.FlutterSecureStorage>()));
    gh.lazySingleton<_i22.IUpdateMovierepository>(
        () => _i23.CinemaUpdateMovieRepository(
              gh<_i20.MovieApiImplementaions>(),
              gh<_i8.FlutterSecureStorage>(),
            ));
    gh.lazySingleton<_i24.IWatchListRepository>(() => _i25.WatchListRepository(
          gh<_i15.WatchlistApiImplementations>(),
          gh<_i8.FlutterSecureStorage>(),
        ));
    gh.factory<_i26.AdminAccountActorNotifier>(
        () => _i26.AdminAccountActorNotifier(gh<_i16.IAuthAdminRepository>()));
    gh.factory<_i27.AdminAccountWatcherNotifier>(() =>
        _i27.AdminAccountWatcherNotifier(gh<_i16.IAuthAdminRepository>()));
    gh.factory<_i28.AdminAuthNotifier>(
        () => _i28.AdminAuthNotifier(gh<_i16.IAuthAdminRepository>()));
    gh.factory<_i29.AdminSignInNotifier>(
        () => _i29.AdminSignInNotifier(gh<_i16.IAuthAdminRepository>()));
    gh.lazySingleton<_i30.ICinemaRepository>(() => _i31.UserCinemaRepository(
          gh<_i20.MovieApiImplementaions>(),
          gh<_i8.FlutterSecureStorage>(),
          gh<_i14.CinemaApiImplementations>(),
        ));
    gh.factory<_i32.ManageUserAccountNotifier>(
        () => _i32.ManageUserAccountNotifier(gh<_i18.IAuthRepository>()));
    gh.factory<_i33.RegisterFormNorifier>(
        () => _i33.RegisterFormNorifier(gh<_i18.IAuthRepository>()));
    gh.factory<_i34.SignInFormNotifier>(
        () => _i34.SignInFormNotifier(gh<_i18.IAuthRepository>()));
    gh.factory<_i35.UserAuthNotifier>(
        () => _i35.UserAuthNotifier(gh<_i18.IAuthRepository>()));
    gh.factory<_i36.ChangeUserPasswordNotifier>(
        () => _i36.ChangeUserPasswordNotifier(gh<_i18.IAuthRepository>()));
    gh.factory<_i37.ChangeUserNameNotifier>(
        () => _i37.ChangeUserNameNotifier(gh<_i18.IAuthRepository>()));
    gh.lazySingleton<_i38.IUserProfileRepository>(
        () => _i39.UserProfileRepository(
              gh<_i13.AuthApiImplementations>(),
              gh<_i8.FlutterSecureStorage>(),
            ));
    gh.lazySingleton<_i40.ICinemaProfileRepository>(
        () => _i41.CinemaProfileRepository(
              gh<_i14.CinemaApiImplementations>(),
              gh<_i8.FlutterSecureStorage>(),
            ));
    gh.factory<_i42.UpdateMovieNotifier>(() => _i42.UpdateMovieNotifier(
          gh<_i22.IUpdateMovierepository>(),
          gh<_i43.MovieInfo>(),
        ));
    gh.lazySingleton<_i44.ICinemaAuthRepository>(
        () => _i45.CinemaAuthRepository(
              gh<_i12.CinemaAuthApiImplementations>(),
              gh<_i8.FlutterSecureStorage>(),
            ));
    gh.factory<_i46.CinemaAuthNotifier>(
        () => _i46.CinemaAuthNotifier(gh<_i44.ICinemaAuthRepository>()));
    gh.factory<_i47.CinemaRegistrationNotifier>(() =>
        _i47.CinemaRegistrationNotifier(gh<_i44.ICinemaAuthRepository>()));
    gh.factory<_i48.CinemaSignInNotifier>(
        () => _i48.CinemaSignInNotifier(gh<_i44.ICinemaAuthRepository>()));
    gh.factory<_i49.ChangeCinemaNameNotifier>(
        () => _i49.ChangeCinemaNameNotifier(gh<_i44.ICinemaAuthRepository>()));
    gh.factory<_i50.ChangeCinemaPasswordNotifier>(() =>
        _i50.ChangeCinemaPasswordNotifier(gh<_i44.ICinemaAuthRepository>()));
    gh.lazySingleton<_i51.IAddMovierepository>(
        () => _i52.CinemaAddMovieRepository(
              gh<_i20.MovieApiImplementaions>(),
              gh<_i8.FlutterSecureStorage>(),
            ));
    gh.factory<_i53.WatchlistNotifier>(
        () => _i53.WatchlistNotifier(gh<_i24.IWatchListRepository>()));
    gh.lazySingleton<_i54.IMovieRepository>(() => _i55.MovieRepository(
          gh<_i20.MovieApiImplementaions>(),
          gh<_i8.FlutterSecureStorage>(),
        ));
    gh.factory<_i56.CinemasWatcherNotifier>(
        () => _i56.CinemasWatcherNotifier(gh<_i30.ICinemaRepository>()));
    gh.factory<_i57.CinemaMoviesWatcherNotifier>(
        () => _i57.CinemaMoviesWatcherNotifier(gh<_i30.ICinemaRepository>()));
    gh.factory<_i58.UserProfileCheckerNotifier>(() =>
        _i58.UserProfileCheckerNotifier(gh<_i38.IUserProfileRepository>()));
    gh.factory<_i59.CinemaProfileCheckerNotifier>(() =>
        _i59.CinemaProfileCheckerNotifier(gh<_i40.ICinemaProfileRepository>()));
    gh.factory<_i60.MovieActorNotifier>(
        () => _i60.MovieActorNotifier(gh<_i54.IMovieRepository>()));
    gh.factory<_i61.MovieWatcherNotifier>(
        () => _i61.MovieWatcherNotifier(gh<_i54.IMovieRepository>()));
    gh.factory<_i62.AddMovieNotifier>(
        () => _i62.AddMovieNotifier(gh<_i51.IAddMovierepository>()));
    return this;
  }
}

class _$DataSourceInjectableModule extends _i63.DataSourceInjectableModule {}
