// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cinema_sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CinemaSignInState {
  EmailAddress get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<CinemaAuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CinemaSignInStateCopyWith<CinemaSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CinemaSignInStateCopyWith<$Res> {
  factory $CinemaSignInStateCopyWith(
          CinemaSignInState value, $Res Function(CinemaSignInState) then) =
      _$CinemaSignInStateCopyWithImpl<$Res, CinemaSignInState>;
  @useResult
  $Res call(
      {EmailAddress email,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$CinemaSignInStateCopyWithImpl<$Res, $Val extends CinemaSignInState>
    implements $CinemaSignInStateCopyWith<$Res> {
  _$CinemaSignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
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
abstract class _$$CinemaSigninStateImplCopyWith<$Res>
    implements $CinemaSignInStateCopyWith<$Res> {
  factory _$$CinemaSigninStateImplCopyWith(_$CinemaSigninStateImpl value,
          $Res Function(_$CinemaSigninStateImpl) then) =
      __$$CinemaSigninStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress email,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$CinemaSigninStateImplCopyWithImpl<$Res>
    extends _$CinemaSignInStateCopyWithImpl<$Res, _$CinemaSigninStateImpl>
    implements _$$CinemaSigninStateImplCopyWith<$Res> {
  __$$CinemaSigninStateImplCopyWithImpl(_$CinemaSigninStateImpl _value,
      $Res Function(_$CinemaSigninStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$CinemaSigninStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
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

class _$CinemaSigninStateImpl implements _CinemaSigninState {
  const _$CinemaSigninStateImpl(
      {required this.email,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'CinemaSignInState(email: $email, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CinemaSigninStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
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
  int get hashCode => Object.hash(runtimeType, email, password,
      showErrorMessages, isSubmitting, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CinemaSigninStateImplCopyWith<_$CinemaSigninStateImpl> get copyWith =>
      __$$CinemaSigninStateImplCopyWithImpl<_$CinemaSigninStateImpl>(
          this, _$identity);
}

abstract class _CinemaSigninState implements CinemaSignInState {
  const factory _CinemaSigninState(
      {required final EmailAddress email,
      required final Password password,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<CinemaAuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$CinemaSigninStateImpl;

  @override
  EmailAddress get email;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<CinemaAuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$CinemaSigninStateImplCopyWith<_$CinemaSigninStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
