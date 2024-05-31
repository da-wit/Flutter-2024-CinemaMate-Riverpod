import 'dart:io';
import 'package:cinema_mate/domain/crudMovie/add_movie/add_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cinema_mate/domain/crudMovie/add_movie/value_objects.dart';

part 'add_movie_state.freezed.dart';

@freezed
class AddMovieState with _$AddMovieState {
  const factory AddMovieState({
    required String title,
    required int numberOfSeats,
    required Date date,
    required Time time,
    required File? image,
    required String genre,
    required bool showErrorMessages,
    required Option<Either<AddFailure, Unit>> addFailureOrSuccessOption,
  }) = _AddMovieState;

  factory AddMovieState.initial() => AddMovieState(
      title: '',
      numberOfSeats: 0,
      showErrorMessages: false,
      genre: '',
      date: Date(DateTime.now()),
      image: null,
      time: Time(const TimeOfDay(hour: 10, minute: 30)),
      addFailureOrSuccessOption: none());
}
