import 'package:cinema_mate/application/user/watchlist/watchlist_provider.dart';
import 'package:cinema_mate/presentation/core/widgets/app_color.dart';
import 'package:cinema_mate/presentation/core/widgets/list_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final newColor = AppColor();
final String baseUrl = dotenv.get('BASE_URL');

class UserWatchListPage extends ConsumerWidget {
  const UserWatchListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watchListNotifier = ref.read(watchlistProvider.notifier);
    final watchListState = ref.watch(watchlistProvider);

    return watchListState.maybeMap(
      loading: (_) => const Center(child: CircularProgressIndicator()),
      orElse: () => const Center(child: CircularProgressIndicator()),
      loadSuccess: (state) {
        return ListView.builder(
          itemCount: state.watchlistMovies.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.only(left: 5, right: 10),
              child: Dismissible(
                key: Key(index.toString()),
                onDismissed: (direction) {
                  watchListNotifier.onWatchlistRemoved(
                      removeMovieId: state.watchlistMovies[index].id);
                },
                background: Container(
                  color: newColor.error,
                  alignment: Alignment.centerRight,
                  child: const Icon(
                    Icons.highlight_remove,
                    size: 40,
                  ),
                ),
                child: ListItem(
                  key: Key(index.toString()),
                  title: state.watchlistMovies[index].title,
                  date: formatDate(state.watchlistMovies[index].day),
                  time: parseTime(state.watchlistMovies[index].showTime),
                  imagePath:
                      "$baseUrl/${state.watchlistMovies[index].imageUrl.replaceFirst("./", "")}",
                ),
              ),
            );
          },
        );
      },
    );
  }
}

String formatDate(String date) {
  try {
    return DateFormat('dd/MM/yyyy').format(DateTime.parse(date));
  } catch (e) {
    return date;
  }
}

String parseTime(String time) {
  try {
    if (time.startsWith('TimeOfDay')) {
      final hour = int.parse(time
          .substring(time.indexOf('(') + 1, time.indexOf(')'))
          .split(':')[0]);
      final minute = int.parse(time
          .substring(time.indexOf('(') + 1, time.indexOf(')'))
          .split(':')[1]);
      return TimeOfDay(hour: hour, minute: minute).toString();
    } else {
      final parts = time.split(':');
      final hour = int.parse(parts[0]);
      final minute = int.parse(parts[1]);
      return TimeOfDay(hour: hour, minute: minute).toString();
    }
  } catch (e) {
    return time;
  }
}
