// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteMovieState {
  MovieId get movieId => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<DeleteFailure, Unit>> get deleteFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteMovieStateCopyWith<DeleteMovieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteMovieStateCopyWith<$Res> {
  factory $DeleteMovieStateCopyWith(
          DeleteMovieState value, $Res Function(DeleteMovieState) then) =
      _$DeleteMovieStateCopyWithImpl<$Res, DeleteMovieState>;
  @useResult
  $Res call(
      {MovieId movieId,
      bool showErrorMessages,
      Option<Either<DeleteFailure, Unit>> deleteFailureOrSuccessOption});
}

/// @nodoc
class _$DeleteMovieStateCopyWithImpl<$Res, $Val extends DeleteMovieState>
    implements $DeleteMovieStateCopyWith<$Res> {
  _$DeleteMovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
    Object? showErrorMessages = null,
    Object? deleteFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as MovieId,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteFailureOrSuccessOption: null == deleteFailureOrSuccessOption
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DeleteFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteMovieStateImplCopyWith<$Res>
    implements $DeleteMovieStateCopyWith<$Res> {
  factory _$$DeleteMovieStateImplCopyWith(_$DeleteMovieStateImpl value,
          $Res Function(_$DeleteMovieStateImpl) then) =
      __$$DeleteMovieStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MovieId movieId,
      bool showErrorMessages,
      Option<Either<DeleteFailure, Unit>> deleteFailureOrSuccessOption});
}

/// @nodoc
class __$$DeleteMovieStateImplCopyWithImpl<$Res>
    extends _$DeleteMovieStateCopyWithImpl<$Res, _$DeleteMovieStateImpl>
    implements _$$DeleteMovieStateImplCopyWith<$Res> {
  __$$DeleteMovieStateImplCopyWithImpl(_$DeleteMovieStateImpl _value,
      $Res Function(_$DeleteMovieStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
    Object? showErrorMessages = null,
    Object? deleteFailureOrSuccessOption = null,
  }) {
    return _then(_$DeleteMovieStateImpl(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as MovieId,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteFailureOrSuccessOption: null == deleteFailureOrSuccessOption
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DeleteFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$DeleteMovieStateImpl implements _DeleteMovieState {
  const _$DeleteMovieStateImpl(
      {required this.movieId,
      required this.showErrorMessages,
      required this.deleteFailureOrSuccessOption});

  @override
  final MovieId movieId;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<DeleteFailure, Unit>> deleteFailureOrSuccessOption;

  @override
  String toString() {
    return 'DeleteMovieState(movieId: $movieId, showErrorMessages: $showErrorMessages, deleteFailureOrSuccessOption: $deleteFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMovieStateImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.deleteFailureOrSuccessOption,
                    deleteFailureOrSuccessOption) ||
                other.deleteFailureOrSuccessOption ==
                    deleteFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, movieId, showErrorMessages, deleteFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMovieStateImplCopyWith<_$DeleteMovieStateImpl> get copyWith =>
      __$$DeleteMovieStateImplCopyWithImpl<_$DeleteMovieStateImpl>(
          this, _$identity);
}

abstract class _DeleteMovieState implements DeleteMovieState {
  const factory _DeleteMovieState(
      {required final MovieId movieId,
      required final bool showErrorMessages,
      required final Option<Either<DeleteFailure, Unit>>
          deleteFailureOrSuccessOption}) = _$DeleteMovieStateImpl;

  @override
  MovieId get movieId;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<DeleteFailure, Unit>> get deleteFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$DeleteMovieStateImplCopyWith<_$DeleteMovieStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
