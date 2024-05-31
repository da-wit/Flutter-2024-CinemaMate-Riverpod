// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cinema_registration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CinemaRegistrationState {
  CinemaName get cinemaName => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  CinemaDescription get description => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<CinemaAuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CinemaRegistrationStateCopyWith<CinemaRegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CinemaRegistrationStateCopyWith<$Res> {
  factory $CinemaRegistrationStateCopyWith(CinemaRegistrationState value,
          $Res Function(CinemaRegistrationState) then) =
      _$CinemaRegistrationStateCopyWithImpl<$Res, CinemaRegistrationState>;
  @useResult
  $Res call(
      {CinemaName cinemaName,
      EmailAddress email,
      Password password,
      CinemaDescription description,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$CinemaRegistrationStateCopyWithImpl<$Res,
        $Val extends CinemaRegistrationState>
    implements $CinemaRegistrationStateCopyWith<$Res> {
  _$CinemaRegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cinemaName = null,
    Object? email = null,
    Object? password = null,
    Object? description = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      cinemaName: null == cinemaName
          ? _value.cinemaName
          : cinemaName // ignore: cast_nullable_to_non_nullable
              as CinemaName,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as CinemaDescription,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CinemaAuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CinemaRegistrationStateImplCopyWith<$Res>
    implements $CinemaRegistrationStateCopyWith<$Res> {
  factory _$$CinemaRegistrationStateImplCopyWith(
          _$CinemaRegistrationStateImpl value,
          $Res Function(_$CinemaRegistrationStateImpl) then) =
      __$$CinemaRegistrationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CinemaName cinemaName,
      EmailAddress email,
      Password password,
      CinemaDescription description,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$CinemaRegistrationStateImplCopyWithImpl<$Res>
    extends _$CinemaRegistrationStateCopyWithImpl<$Res,
        _$CinemaRegistrationStateImpl>
    implements _$$CinemaRegistrationStateImplCopyWith<$Res> {
  __$$CinemaRegistrationStateImplCopyWithImpl(
      _$CinemaRegistrationStateImpl _value,
      $Res Function(_$CinemaRegistrationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cinemaName = null,
    Object? email = null,
    Object? password = null,
    Object? description = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$CinemaRegistrationStateImpl(
      cinemaName: null == cinemaName
          ? _value.cinemaName
          : cinemaName // ignore: cast_nullable_to_non_nullable
              as CinemaName,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as CinemaDescription,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CinemaAuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$CinemaRegistrationStateImpl implements _CinemaRegistrationState {
  const _$CinemaRegistrationStateImpl(
      {required this.cinemaName,
      required this.email,
      required this.password,
      required this.description,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final CinemaName cinemaName;
  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final CinemaDescription description;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'CinemaRegistrationState(cinemaName: $cinemaName, email: $email, password: $password, description: $description, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CinemaRegistrationStateImpl &&
            (identical(other.cinemaName, cinemaName) ||
                other.cinemaName == cinemaName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cinemaName, email, password,
      description, showErrorMessages, isSubmitting, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CinemaRegistrationStateImplCopyWith<_$CinemaRegistrationStateImpl>
      get copyWith => __$$CinemaRegistrationStateImplCopyWithImpl<
          _$CinemaRegistrationStateImpl>(this, _$identity);
}

abstract class _CinemaRegistrationState implements CinemaRegistrationState {
  const factory _CinemaRegistrationState(
      {required final CinemaName cinemaName,
      required final EmailAddress email,
      required final Password password,
      required final CinemaDescription description,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<CinemaAuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$CinemaRegistrationStateImpl;

  @override
  CinemaName get cinemaName;
  @override
  EmailAddress get email;
  @override
  Password get password;
  @override
  CinemaDescription get description;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<CinemaAuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$CinemaRegistrationStateImplCopyWith<_$CinemaRegistrationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
