// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddMovieState {
  String get title => throw _privateConstructorUsedError;
  int get numberOfSeats => throw _privateConstructorUsedError;
  Date get date => throw _privateConstructorUsedError;
  Time get time => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AddFailure, Unit>> get addFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddMovieStateCopyWith<AddMovieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMovieStateCopyWith<$Res> {
  factory $AddMovieStateCopyWith(
          AddMovieState value, $Res Function(AddMovieState) then) =
      _$AddMovieStateCopyWithImpl<$Res, AddMovieState>;
  @useResult
  $Res call(
      {String title,
      int numberOfSeats,
      Date date,
      Time time,
      File? image,
      String genre,
      bool showErrorMessages,
      Option<Either<AddFailure, Unit>> addFailureOrSuccessOption});
}

/// @nodoc
class _$AddMovieStateCopyWithImpl<$Res, $Val extends AddMovieState>
    implements $AddMovieStateCopyWith<$Res> {
  _$AddMovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? numberOfSeats = null,
    Object? date = null,
    Object? time = null,
    Object? image = freezed,
    Object? genre = null,
    Object? showErrorMessages = null,
    Object? addFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfSeats: null == numberOfSeats
          ? _value.numberOfSeats
          : numberOfSeats // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      addFailureOrSuccessOption: null == addFailureOrSuccessOption
          ? _value.addFailureOrSuccessOption
          : addFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AddFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddMovieStateImplCopyWith<$Res>
    implements $AddMovieStateCopyWith<$Res> {
  factory _$$AddMovieStateImplCopyWith(
          _$AddMovieStateImpl value, $Res Function(_$AddMovieStateImpl) then) =
      __$$AddMovieStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      int numberOfSeats,
      Date date,
      Time time,
      File? image,
      String genre,
      bool showErrorMessages,
      Option<Either<AddFailure, Unit>> addFailureOrSuccessOption});
}

/// @nodoc
class __$$AddMovieStateImplCopyWithImpl<$Res>
    extends _$AddMovieStateCopyWithImpl<$Res, _$AddMovieStateImpl>
    implements _$$AddMovieStateImplCopyWith<$Res> {
  __$$AddMovieStateImplCopyWithImpl(
      _$AddMovieStateImpl _value, $Res Function(_$AddMovieStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? numberOfSeats = null,
    Object? date = null,
    Object? time = null,
    Object? image = freezed,
    Object? genre = null,
    Object? showErrorMessages = null,
    Object? addFailureOrSuccessOption = null,
  }) {
    return _then(_$AddMovieStateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfSeats: null == numberOfSeats
          ? _value.numberOfSeats
          : numberOfSeats // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      addFailureOrSuccessOption: null == addFailureOrSuccessOption
          ? _value.addFailureOrSuccessOption
          : addFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AddFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$AddMovieStateImpl implements _AddMovieState {
  const _$AddMovieStateImpl(
      {required this.title,
      required this.numberOfSeats,
      required this.date,
      required this.time,
      required this.image,
      required this.genre,
      required this.showErrorMessages,
      required this.addFailureOrSuccessOption});

  @override
  final String title;
  @override
  final int numberOfSeats;
  @override
  final Date date;
  @override
  final Time time;
  @override
  final File? image;
  @override
  final String genre;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AddFailure, Unit>> addFailureOrSuccessOption;

  @override
  String toString() {
    return 'AddMovieState(title: $title, numberOfSeats: $numberOfSeats, date: $date, time: $time, image: $image, genre: $genre, showErrorMessages: $showErrorMessages, addFailureOrSuccessOption: $addFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMovieStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.numberOfSeats, numberOfSeats) ||
                other.numberOfSeats == numberOfSeats) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.addFailureOrSuccessOption,
                    addFailureOrSuccessOption) ||
                other.addFailureOrSuccessOption == addFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, numberOfSeats, date, time,
      image, genre, showErrorMessages, addFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMovieStateImplCopyWith<_$AddMovieStateImpl> get copyWith =>
      __$$AddMovieStateImplCopyWithImpl<_$AddMovieStateImpl>(this, _$identity);
}

abstract class _AddMovieState implements AddMovieState {
  const factory _AddMovieState(
      {required final String title,
      required final int numberOfSeats,
      required final Date date,
      required final Time time,
      required final File? image,
      required final String genre,
      required final bool showErrorMessages,
      required final Option<Either<AddFailure, Unit>>
          addFailureOrSuccessOption}) = _$AddMovieStateImpl;

  @override
  String get title;
  @override
  int get numberOfSeats;
  @override
  Date get date;
  @override
  Time get time;
  @override
  File? get image;
  @override
  String get genre;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<AddFailure, Unit>> get addFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$AddMovieStateImplCopyWith<_$AddMovieStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
