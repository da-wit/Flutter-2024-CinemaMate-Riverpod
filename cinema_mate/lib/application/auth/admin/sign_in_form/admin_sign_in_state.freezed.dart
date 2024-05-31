// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminSignInState {
  Username get username => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AdminAuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminSignInStateCopyWith<AdminSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminSignInStateCopyWith<$Res> {
  factory $AdminSignInStateCopyWith(
          AdminSignInState value, $Res Function(AdminSignInState) then) =
      _$AdminSignInStateCopyWithImpl<$Res, AdminSignInState>;
  @useResult
  $Res call(
      {Username username,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AdminAuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$AdminSignInStateCopyWithImpl<$Res, $Val extends AdminSignInState>
    implements $AdminSignInStateCopyWith<$Res> {
  _$AdminSignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
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
              as Option<Either<AdminAuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminSignInStateImplCopyWith<$Res>
    implements $AdminSignInStateCopyWith<$Res> {
  factory _$$AdminSignInStateImplCopyWith(_$AdminSignInStateImpl value,
          $Res Function(_$AdminSignInStateImpl) then) =
      __$$AdminSignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Username username,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AdminAuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$AdminSignInStateImplCopyWithImpl<$Res>
    extends _$AdminSignInStateCopyWithImpl<$Res, _$AdminSignInStateImpl>
    implements _$$AdminSignInStateImplCopyWith<$Res> {
  __$$AdminSignInStateImplCopyWithImpl(_$AdminSignInStateImpl _value,
      $Res Function(_$AdminSignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$AdminSignInStateImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
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
              as Option<Either<AdminAuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$AdminSignInStateImpl implements _AdminSignInState {
  const _$AdminSignInStateImpl(
      {required this.username,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final Username username;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AdminAuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'AdminSignInState(username: $username, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminSignInStateImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
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
  int get hashCode => Object.hash(runtimeType, username, password,
      showErrorMessages, isSubmitting, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminSignInStateImplCopyWith<_$AdminSignInStateImpl> get copyWith =>
      __$$AdminSignInStateImplCopyWithImpl<_$AdminSignInStateImpl>(
          this, _$identity);
}

abstract class _AdminSignInState implements AdminSignInState {
  const factory _AdminSignInState(
      {required final Username username,
      required final Password password,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<AdminAuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$AdminSignInStateImpl;

  @override
  Username get username;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AdminAuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$AdminSignInStateImplCopyWith<_$AdminSignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
