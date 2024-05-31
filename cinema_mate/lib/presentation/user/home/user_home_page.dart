import 'package:cinema_mate/application/user/cinemas_watcher/cinemas_watcher_provider.dart';
import 'package:cinema_mate/application/user/cinemas_watcher/cinemas_watcher_state.dart';
import 'package:cinema_mate/presentation/core/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final String baseUrl = dotenv.get('BASE_URL');

class UserHomePage extends ConsumerWidget {
  const UserHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cinemaWatcherState = ref.watch(cinemasWatcherProvider);
    final cinemaWatchNotifier = ref.read(cinemasWatcherProvider.notifier);
    cinemaWatchNotifier.onWatchAllCinemasStarted();

    ref.listen<CinemaWatcherState>(cinemasWatcherProvider, (previous, next) {});
    return cinemaWatcherState.map(
      initial: (_) => const Center(child: CircularProgressIndicator()),
      loading: (_) => const Center(child: CircularProgressIndicator()),
      loadSuccess: (state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: GridView.builder(
            itemCount: state.cinemas.size,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  context.pushNamed(
                    'cinemaDetails',
                    extra: state.cinemas[index],
                  );
                },
                child: AppCard(
                  title: state.cinemas[index].cinemaName,
                  imgpath:
                      "$baseUrl/src/${state.cinemas[index].imagePath.replaceFirst("./", "")}",
                ),
              );
            },
          ),
        );
      },
      loadFailure: (_) => const Center(child: Text('Failed to load cinemas')),
    );
  }
}
