import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class CurrentMovieNotifier extends StateNotifier<int> {
  CurrentMovieNotifier() : super(0);

  void onUpdateCurrentMovie({required int movieId}) {
    state = movieId;
  }
}
