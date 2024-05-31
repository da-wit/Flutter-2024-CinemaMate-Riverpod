// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cinema_mate/application/auth/cinema/cinema_auth_notifier.dart'
    as _i35;
import 'package:cinema_mate/application/auth/cinema/regsitration_form/cinema_registration_notifier.dart'
    as _i36;
import 'package:cinema_mate/application/auth/cinema/sign_in_form/cinema_sign_in_notifier.dart'
    as _i37;
import 'package:cinema_mate/application/auth/user/account_management/manage_user_account_notifier.dart'
    as _i23;
import 'package:cinema_mate/application/auth/user/register_form/register_form_norifier.dart'
    as _i24;
import 'package:cinema_mate/application/auth/user/sign_in_form/sign_in_form_notifier.dart'
    as _i25;
import 'package:cinema_mate/application/auth/user/user_auth_notifier.dart'
    as _i26;
import 'package:cinema_mate/application/cinema/bottom_nav_bar/bottom_nav_bar_notifier.dart'
    as _i3;
import 'package:cinema_mate/application/cinema/cinema_movie/add_movie/add_movie_notifier.dart'
    as _i44;
import 'package:cinema_mate/application/cinema/cinema_movie/delete_movie/delete_movie_notifier.dart'
    as _i7;
import 'package:cinema_mate/application/cinema/cinema_movie/update_movie/update_movie_notifier.dart'
    as _i31;
import 'package:cinema_mate/application/cinema/cinema_profile/change_cinema_name/change_cinema_name_notifier.dart'
    as _i38;
import 'package:cinema_mate/application/cinema/cinema_profile/change_password/change_cinema_password_notifier.dart'
    as _i39;
import 'package:cinema_mate/application/cinema/cinema_profile/profile_checker/cinema_profile_checker_notifier.dart'
    as _i43;
import 'package:cinema_mate/application/cinema/movie_actor/movie_actor_notifier.dart'
    as _i27;
import 'package:cinema_mate/application/cinema/movie_watcher/movie_watcher_notifier.dart'
    as _i28;
import 'package:cinema_mate/application/role/role_notifier.dart' as _i4;
import 'package:cinema_mate/application/user/watchlist/watchlist_notifier.dart'
    as _i42;
import 'package:cinema_mate/domain/auth/cinema/i_cinema_auth_repository.dart'
    as _i33;
import 'package:cinema_mate/domain/auth/user/i_auth_repository.dart' as _i16;
import 'package:cinema_mate/domain/crudMovie/add_movie/I_add_movie_repository.dart'
    as _i40;
import 'package:cinema_mate/domain/crudMovie/cinema_profile/i_cinema_profile_repository.dart'
    as _i29;
import 'package:cinema_mate/domain/crudMovie/delete_movie/i_delete_movie_repository.dart'
    as _i8;
import 'package:cinema_mate/domain/crudMovie/update_movie/i_update_movie_repository.dart'
    as _i19;
import 'package:cinema_mate/domain/movie/i_movieRepository.dart' as _i14;
import 'package:cinema_mate/domain/movie/movie.dart' as _i32;
import 'package:cinema_mate/domain/watchlist/i_watch_list_repository.dart'
    as _i21;
import 'package:cinema_mate/infrastructure/auth/cinema/cinema_auth_repository.dart'
    as _i34;
import 'package:cinema_mate/infrastructure/auth/cinema/data_sources/cinema_auth_api.dart'
    as _i9;
import 'package:cinema_mate/infrastructure/auth/user/auth_repository.dart'
    as _i17;
import 'package:cinema_mate/infrastructure/auth/user/data_sources/auth_api.dart'
    as _i10;
import 'package:cinema_mate/infrastructure/auth/user/data_sources/local_data_source.dart'
    as _i18;
import 'package:cinema_mate/infrastructure/cinema/cinema_add_movie_repository.dart'
    as _i41;
import 'package:cinema_mate/infrastructure/cinema/cinema_profile_repository.dart'
    as _i30;
import 'package:cinema_mate/infrastructure/cinema/cinema_update_movie_repository.dart'
    as _i20;
import 'package:cinema_mate/infrastructure/cinema/data_source/cinema_api.dart'
    as _i11;
import 'package:cinema_mate/infrastructure/core/data_source_injectable_module.dart'
    as _i45;
import 'package:cinema_mate/infrastructure/movie/data_sources/movie_api.dart'
    as _i12;
import 'package:cinema_mate/infrastructure/movie/movie_repository.dart' as _i15;
import 'package:cinema_mate/infrastructure/user/watchlist/data_source/watchlist_api.dart'
    as _i13;
import 'package:cinema_mate/infrastructure/user/watchlist/watch_list_repository.dart'
    as _i22;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i5;
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
    gh.lazySingleton<_i5.Client>(() => dataSourceInjectableModule.client);
    gh.lazySingleton<_i6.FlutterSecureStorage>(
        () => dataSourceInjectableModule.secureStorage);
    gh.factory<_i7.DeleteMovieNotifier>(
        () => _i7.DeleteMovieNotifier(gh<_i8.IDeleteMovierepository>()));
    gh.factory<_i9.CinemaAuthApiImplementations>(
        () => _i9.CinemaAuthApiImplementations(client: gh<_i5.Client>()));
    gh.factory<_i10.AuthApiImplementations>(
        () => _i10.AuthApiImplementations(client: gh<_i5.Client>()));
    gh.factory<_i11.CinemaApiImplementations>(
        () => _i11.CinemaApiImplementations(client: gh<_i5.Client>()));
    gh.factory<_i12.MovieApiImplementaions>(
        () => _i12.MovieApiImplementaions(client: gh<_i5.Client>()));
    gh.factory<_i13.WatchlistApiImplementations>(
        () => _i13.WatchlistApiImplementations(client: gh<_i5.Client>()));
    gh.lazySingleton<_i14.IMovieRepository>(() => _i15.MovieRepository(
          gh<_i12.MovieApiImplementaions>(),
          gh<_i6.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i16.IAuthRepository>(() => _i17.AuthRepository(
          gh<_i10.AuthApiImplementations>(),
          gh<_i6.FlutterSecureStorage>(),
        ));
    gh.factory<_i18.LocalSecureStorage>(() =>
        _i18.LocalSecureStorage(secureStorage: gh<_i6.FlutterSecureStorage>()));
    gh.lazySingleton<_i19.IUpdateMovierepository>(
        () => _i20.CinemaUpdateMovieRepository(
              gh<_i12.MovieApiImplementaions>(),
              gh<_i6.FlutterSecureStorage>(),
            ));
    gh.lazySingleton<_i21.IWatchListRepository>(() => _i22.WatchListRepository(
          gh<_i13.WatchlistApiImplementations>(),
          gh<_i6.FlutterSecureStorage>(),
        ));
    gh.factory<_i23.ManageUserAccountNotifier>(
        () => _i23.ManageUserAccountNotifier(gh<_i16.IAuthRepository>()));
    gh.factory<_i24.RegisterFormNorifier>(
        () => _i24.RegisterFormNorifier(gh<_i16.IAuthRepository>()));
    gh.factory<_i25.SignInFormNotifier>(
        () => _i25.SignInFormNotifier(gh<_i16.IAuthRepository>()));
    gh.factory<_i26.UserAuthNotifier>(
        () => _i26.UserAuthNotifier(gh<_i16.IAuthRepository>()));
    gh.factory<_i27.MovieActorNotifier>(
        () => _i27.MovieActorNotifier(gh<_i14.IMovieRepository>()));
    gh.factory<_i28.MovieWatcherNotifier>(
        () => _i28.MovieWatcherNotifier(gh<_i14.IMovieRepository>()));
    gh.lazySingleton<_i29.ICinemaProfileRepository>(
        () => _i30.CinemaProfileRepository(
              gh<_i11.CinemaApiImplementations>(),
              gh<_i6.FlutterSecureStorage>(),
            ));
    gh.factory<_i31.UpdateMovieNotifier>(() => _i31.UpdateMovieNotifier(
          gh<_i19.IUpdateMovierepository>(),
          gh<_i32.MovieInfo>(),
        ));
    gh.lazySingleton<_i33.ICinemaAuthRepository>(
        () => _i34.CinemaAuthRepository(
              gh<_i9.CinemaAuthApiImplementations>(),
              gh<_i6.FlutterSecureStorage>(),
            ));
    gh.factory<_i35.CinemaAuthNotifier>(
        () => _i35.CinemaAuthNotifier(gh<_i33.ICinemaAuthRepository>()));
    gh.factory<_i36.CinemaRegistrationNotifier>(() =>
        _i36.CinemaRegistrationNotifier(gh<_i33.ICinemaAuthRepository>()));
    gh.factory<_i37.CinemaSignInNotifier>(
        () => _i37.CinemaSignInNotifier(gh<_i33.ICinemaAuthRepository>()));
    gh.factory<_i38.ChangeCinemaNameNotifier>(
        () => _i38.ChangeCinemaNameNotifier(gh<_i33.ICinemaAuthRepository>()));
    gh.factory<_i39.ChangeCinemaPasswordNotifier>(() =>
        _i39.ChangeCinemaPasswordNotifier(gh<_i33.ICinemaAuthRepository>()));
    gh.lazySingleton<_i40.IAddMovierepository>(
        () => _i41.CinemaAddMovieRepository(
              gh<_i12.MovieApiImplementaions>(),
              gh<_i6.FlutterSecureStorage>(),
            ));
    gh.factory<_i42.WatchlistNotifier>(
        () => _i42.WatchlistNotifier(gh<_i21.IWatchListRepository>()));
    gh.factory<_i43.CinemaProfileCheckerNotifier>(() =>
        _i43.CinemaProfileCheckerNotifier(gh<_i29.ICinemaProfileRepository>()));
    gh.factory<_i44.AddMovieNotifier>(
        () => _i44.AddMovieNotifier(gh<_i40.IAddMovierepository>()));
    return this;
  }
}

class _$DataSourceInjectableModule extends _i45.DataSourceInjectableModule {}
