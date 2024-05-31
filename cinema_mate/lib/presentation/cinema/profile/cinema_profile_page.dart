import 'package:cinema_mate/presentation/cinema/profile/cinema_profile_page_widget.dart';
import 'package:flutter/material.dart';

class CinemaProfilePage extends StatelessWidget {
  const CinemaProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // MultiBlocProvider(
        //   providers: [
        //     BlocProvider(
        //       create: (context) => getIt<CinemaAuthBloc>(),
        //     ),
        //     BlocProvider(
        //       create: (context) => getIt<CinemaProfileCheckerBloc>()
        //         ..add(
        //           const CinemaProfileCheckerEvent.fetchCinemaDetails(),
        //         ),
        //     )
        //   ],
        //   child: const CinemaProfilePageWidget(),
        const CinemaProfilePageWidget();
  }
}
