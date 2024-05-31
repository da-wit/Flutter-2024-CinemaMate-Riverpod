// import 'package:cinema_mate/application/cinema/movie_watcher/movie_watcher_bloc.dart';
// import 'package:cinema_mate/injection.dart';
// import 'package:cinema_mate/presentation/cinema/home/cinema_home_widget.dart';
import 'package:cinema_mate/application/cinema/movie_watcher/movie_watcher_provider.dart';
import 'package:cinema_mate/presentation/cinema/home/cinema_home_widget.dart';
import 'package:cinema_mate/presentation/core/widgets/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

var newColor = AppColor();

class CinemaHomePage extends ConsumerWidget {
  const CinemaHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieWatchNotifier = ref.read(movieWatcherProvider.notifier);

    Future.microtask(() {
      movieWatchNotifier.onWatchAllMoviesStarted();
    });
    return Scaffold(
      backgroundColor: newColor.bg,
      body: const CinemaHomeWidget(),
    );
  }
}
