// import 'package:cinema_mate/presentation/auth/user/registration/registration_page.dart';
// import 'package:cinema_mate/presentation/auth/user/registration/registration_page.dart';
// import 'package:cinema_mate/presentation101/auth/user/user_profile/user_profile.dart';
// import 'package:cinema_mate/presentation/core/signin/signin_page.dart';
// import 'package:cinema_mate/presentation/core/signin/signin_page.dart';
import 'package:cinema_mate/presentation/auth/cinema/registration/cinema_registration_form.dart';
import 'package:cinema_mate/presentation/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:cinema_mate/injection.dart';
// import 'package:cinema_mate/presentation/auth/user/user_profile/user_profile.dart';
// import 'package:cinema_mate/presentation/auth/user/registration/registration_page.dart';
// import 'package:cinema_mate/presentation/core/signin/signin_page.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "assets/.env");
  configureInjection(Environment.prod);
  runApp(
    const ProviderScope(
      child: MaterialApp(
        home: Scaffold(
          body: SplashPage(),
        ),
      ),
    ),
  );
}
