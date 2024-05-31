// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cinema_mate/application/auth/cinema/cinema_auth_notifier.dart'
    as _i28;
import 'package:cinema_mate/application/auth/cinema/regsitration_form/cinema_registration_notifier.dart'
    as _i27;
import 'package:cinema_mate/application/auth/cinema/sign_in_form/cinema_sign_in_notifier.dart'
    as _i26;
import 'package:cinema_mate/application/auth/user/account_management/manage_user_account_notifier.dart'
    as _i19;
import 'package:cinema_mate/application/auth/user/register_form/register_form_norifier.dart'
    as _i20;
import 'package:cinema_mate/application/auth/user/sign_in_form/sign_in_form_notifier.dart'
    as _i21;
import 'package:cinema_mate/application/auth/user/user_auth_notifier.dart'
    as _i22;
import 'package:cinema_mate/application/cinema/bottom_nav_bar/bottom_nav_bar_notifier.dart'
    as _i3;
import 'package:cinema_mate/application/cinema/movie_watcher/movie_watcher_notifier.dart'
    as _i23;
import 'package:cinema_mate/application/role/role_notifier.dart' as _i4;
import 'package:cinema_mate/application/user/watchlist/watchlist_notifier.dart'
    as _i29;
import 'package:cinema_mate/domain/auth/cinema/i_cinema_auth_repository.dart'
    as _i24;
import 'package:cinema_mate/domain/auth/user/i_auth_repository.dart' as _i14;
import 'package:cinema_mate/domain/movie/i_movieRepository.dart' as _i12;
import 'package:cinema_mate/domain/watchlist/i_watch_list_repository.dart'
    as _i17;
import 'package:cinema_mate/infrastructure/auth/cinema/cinema_auth_repository.dart'
    as _i25;
import 'package:cinema_mate/infrastructure/auth/cinema/data_sources/cinema_auth_api.dart'
    as _i8;
import 'package:cinema_mate/infrastructure/auth/user/auth_repository.dart'
    as _i15;
import 'package:cinema_mate/infrastructure/auth/user/data_sources/auth_api.dart'
    as _i7;
import 'package:cinema_mate/infrastructure/auth/user/data_sources/local_data_source.dart'
    as _i16;
import 'package:cinema_mate/infrastructure/cinema/data_source/cinema_api.dart'
    as _i9;
import 'package:cinema_mate/infrastructure/core/data_source_injectable_module.dart'
    as _i30;
import 'package:cinema_mate/infrastructure/movie/data_sources/movie_api.dart'
    as _i10;
import 'package:cinema_mate/infrastructure/movie/movie_repository.dart' as _i13;
import 'package:cinema_mate/infrastructure/user/watchlist/data_source/watchlist_api.dart'
    as _i11;
import 'package:cinema_mate/infrastructure/user/watchlist/watch_list_repository.dart'
    as _i18;
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
    gh.factory<_i7.AuthApiImplementations>(
        () => _i7.AuthApiImplementations(client: gh<_i5.Client>()));
    gh.factory<_i8.CinemaAuthApiImplementations>(
        () => _i8.CinemaAuthApiImplementations(client: gh<_i5.Client>()));
    gh.factory<_i9.CinemaApiImplementations>(
        () => _i9.CinemaApiImplementations(client: gh<_i5.Client>()));
    gh.factory<_i10.MovieApiImplementaions>(
        () => _i10.MovieApiImplementaions(client: gh<_i5.Client>()));
    gh.factory<_i11.WatchlistApiImplementations>(
        () => _i11.WatchlistApiImplementations(client: gh<_i5.Client>()));
    gh.lazySingleton<_i12.IMovieRepository>(() => _i13.MovieRepository(
          gh<_i10.MovieApiImplementaions>(),
          gh<_i6.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i14.IAuthRepository>(() => _i15.AuthRepository(
          gh<_i7.AuthApiImplementations>(),
          gh<_i6.FlutterSecureStorage>(),
        ));
    gh.factory<_i16.LocalSecureStorage>(() =>
        _i16.LocalSecureStorage(secureStorage: gh<_i6.FlutterSecureStorage>()));
    gh.lazySingleton<_i17.IWatchListRepository>(() => _i18.WatchListRepository(
          gh<_i11.WatchlistApiImplementations>(),
          gh<_i6.FlutterSecureStorage>(),
        ));
    gh.factory<_i19.ManageUserAccountNotifier>(
        () => _i19.ManageUserAccountNotifier(gh<_i14.IAuthRepository>()));
    gh.factory<_i20.RegisterFormNorifier>(
        () => _i20.RegisterFormNorifier(gh<_i14.IAuthRepository>()));
    gh.factory<_i21.SignInFormNotifier>(
        () => _i21.SignInFormNotifier(gh<_i14.IAuthRepository>()));
    gh.factory<_i22.UserAuthNotifier>(
        () => _i22.UserAuthNotifier(gh<_i14.IAuthRepository>()));
    gh.factory<_i23.MovieWatcherNotifier>(
        () => _i23.MovieWatcherNotifier(gh<_i12.IMovieRepository>()));
    gh.lazySingleton<_i24.ICinemaAuthRepository>(
        () => _i25.CinemaAuthRepository(
              gh<_i8.CinemaAuthApiImplementations>(),
              gh<_i6.FlutterSecureStorage>(),
            ));
    gh.factory<_i26.CinemaSignInNotifier>(
        () => _i26.CinemaSignInNotifier(gh<_i24.ICinemaAuthRepository>()));
    gh.factory<_i27.CinemaRegistrationNotifier>(() =>
        _i27.CinemaRegistrationNotifier(gh<_i24.ICinemaAuthRepository>()));
    gh.factory<_i28.CinemaAuthNotifier>(
        () => _i28.CinemaAuthNotifier(gh<_i24.ICinemaAuthRepository>()));
    gh.factory<_i29.WatchlistNotifier>(
        () => _i29.WatchlistNotifier(gh<_i17.IWatchListRepository>()));
    return this;
  }
}

class _$DataSourceInjectableModule extends _i30.DataSourceInjectableModule {}
