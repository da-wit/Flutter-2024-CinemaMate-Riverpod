// import 'package:cinema_mate/application/cinema/movie_watcher/movie_watcher_bloc.dart';
import 'package:cinema_mate/application/cinema/movie_watcher/movie_watcher_provider.dart';
import 'package:cinema_mate/domain/movie/movie.dart';
import 'package:cinema_mate/presentation/cinema/widgets/cinema_details.dart';
import 'package:cinema_mate/presentation/core/widgets/card.dart';
// import 'package:cinema_mate/presentation/core/widgets/card.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final String baseUrl = dotenv.get('BASE_URL');

class CinemaHomeWidget extends ConsumerWidget {
  const CinemaHomeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final movieNotifier = ref.read(movieWatcherProvider.notifier);
    final movieState = ref.watch(movieWatcherProvider);

    //TODO
    //Do not forget to write the lisner here!!!!

    return movieState.map(
        intial: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
        loading: (_) => const CircularProgressIndicator(),
        loadSuccess: (state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: GridView.builder(
                itemCount: state.movies.size,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      return _dialogBuilder(context, state.movies[index]);
                    },
                    child: AppCard(
                        title: state.movies[index].name,
                        imgpath: state.movies[index].image),
                  );
                }),
          );
        },
        loadFailure: (failure) {
          return const Center(
            child: Text('Faild To Load Image'),
          );
        });

//     BlocConsumer<MovieWatcherBloc, MovieWatcherState>(
//         builder: (context, state) {
//           return state.map(
//               initial: (_) => const CircularProgressIndicator(),
//               loading: (_) => const CircularProgressIndicator(),
//               loadSuccess: (state) {
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   child: GridView.builder(
//                     itemCount:
//                         state.movies.size, // use the length of your movies list
//                     gridDelegate:
//                         const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2, // number of columns
//                     ),
//                     itemBuilder: (BuildContext context, int index) {
//                       return InkWell(
//                         onTap: () {
//                           return _dialogBuilder(context, state.movies[index]);
//                         },
//                         child: AppCard(
//                           title: state.movies[index].name,
//                           imgpath: "$baseUrl/${state.movies[index].image}",
//                         ),
//                       );
//                     },
//                   ),
//                 );
//               },
//               loadFailure: (failure) {
//                 return const Center(child: Text('Failed to load movies'));
//               });
//         },
//         listener: (context, state) {});
//   }
// }
//   }
  }

  void _dialogBuilder(BuildContext context, MovieInfo movie) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: FractionallySizedBox(
            widthFactor: 1.1,
            child: SingleChildScrollView(
              child: CinemaDetail(movie: movie),
            ),
          ),
        );
      },
    );
  }
}
