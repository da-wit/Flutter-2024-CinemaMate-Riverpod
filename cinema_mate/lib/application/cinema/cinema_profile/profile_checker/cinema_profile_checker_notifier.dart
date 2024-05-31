import 'dart:io';
import 'package:cinema_mate/application/cinema/cinema_profile/profile_checker/cinema_profile_checker_state.dart';
import 'package:cinema_mate/domain/crudMovie/cinema_profile/i_cinema_profile_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class CinemaProfileCheckerNotifier
    extends StateNotifier<CinemaProfileCheckerState> {
  final ICinemaProfileRepository iCinemaProfileRepository;
  CinemaProfileCheckerNotifier(this.iCinemaProfileRepository)
      : super(const Initial());

  void onCinemaProfileCheckerEvent() {}

  void onFetchCinemaDetails() async {
    state = const CinemaProfileCheckerState.loading();
    final cinemaProfile = await iCinemaProfileRepository.fetchCienmaProfile();

    state = cinemaProfile.fold(
      (failure) => CinemaProfileCheckerState.loadFailure(failure),
      (cinema) => CinemaProfileCheckerState.loadSuccess(cinema),
    );
  }

  void onUploadImage(File file) async {
    state = const CinemaProfileCheckerState.loading();
    final uploadResult = await iCinemaProfileRepository.uploadImage(file);
    print(uploadResult);

    state = uploadResult.fold(
      (failure) => CinemaProfileCheckerState.loadFailure(failure),
      (cinema) => CinemaProfileCheckerState.loadSuccess(
          cinema.copyWith(imagePath: file.path)),
    );
  }
}

// class CinemaProfileCheckerEvent with _$CinemaProfileCheckerEvent {
//   const factory CinemaProfileCheckerEvent.fetchCinemaDetails() =
//       FetchCinemaDetails;
//   const factory CinemaProfileCheckerEvent.uploadImage(File file) = UploadImage;
// }
