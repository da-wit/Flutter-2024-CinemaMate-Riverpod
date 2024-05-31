// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_cinema_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangeCinemaPasswordState {
  Password get currentPassword => throw _privateConstructorUsedError;
  Password get newPassword => throw _privateConstructorUsedError;
  Password get confirmation => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<CinemaAuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption)
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption)?
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption)?
        changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePassword value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePassword value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangeCinemaPasswordStateCopyWith<ChangeCinemaPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeCinemaPasswordStateCopyWith<$Res> {
  factory $ChangeCinemaPasswordStateCopyWith(ChangeCinemaPasswordState value,
          $Res Function(ChangeCinemaPasswordState) then) =
      _$ChangeCinemaPasswordStateCopyWithImpl<$Res, ChangeCinemaPasswordState>;
  @useResult
  $Res call(
      {Password currentPassword,
      Password newPassword,
      Password confirmation,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$ChangeCinemaPasswordStateCopyWithImpl<$Res,
        $Val extends ChangeCinemaPasswordState>
    implements $ChangeCinemaPasswordStateCopyWith<$Res> {
  _$ChangeCinemaPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
    Object? confirmation = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmation: null == confirmation
          ? _value.confirmation
          : confirmation // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ChangePasswordImplCopyWith<$Res>
    implements $ChangeCinemaPasswordStateCopyWith<$Res> {
  factory _$$ChangePasswordImplCopyWith(_$ChangePasswordImpl value,
          $Res Function(_$ChangePasswordImpl) then) =
      __$$ChangePasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Password currentPassword,
      Password newPassword,
      Password confirmation,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$ChangePasswordImplCopyWithImpl<$Res>
    extends _$ChangeCinemaPasswordStateCopyWithImpl<$Res, _$ChangePasswordImpl>
    implements _$$ChangePasswordImplCopyWith<$Res> {
  __$$ChangePasswordImplCopyWithImpl(
      _$ChangePasswordImpl _value, $Res Function(_$ChangePasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
    Object? confirmation = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$ChangePasswordImpl(
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmation: null == confirmation
          ? _value.confirmation
          : confirmation // ignore: cast_nullable_to_non_nullable
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

class _$ChangePasswordImpl implements _ChangePassword {
  const _$ChangePasswordImpl(
      {required this.currentPassword,
      required this.newPassword,
      required this.confirmation,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final Password currentPassword;
  @override
  final Password newPassword;
  @override
  final Password confirmation;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'ChangeCinemaPasswordState.changePassword(currentPassword: $currentPassword, newPassword: $newPassword, confirmation: $confirmation, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordImpl &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmation, confirmation) ||
                other.confirmation == confirmation) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      currentPassword,
      newPassword,
      confirmation,
      showErrorMessages,
      isSubmitting,
      authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      __$$ChangePasswordImplCopyWithImpl<_$ChangePasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption)
        changePassword,
  }) {
    return changePassword(currentPassword, newPassword, confirmation,
        showErrorMessages, isSubmitting, authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption)?
        changePassword,
  }) {
    return changePassword?.call(currentPassword, newPassword, confirmation,
        showErrorMessages, isSubmitting, authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<CinemaAuthFailure, Unit>> authFailureOrSuccessOption)?
        changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(currentPassword, newPassword, confirmation,
          showErrorMessages, isSubmitting, authFailureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements ChangeCinemaPasswordState {
  const factory _ChangePassword(
      {required final Password currentPassword,
      required final Password newPassword,
      required final Password confirmation,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<CinemaAuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$ChangePasswordImpl;

  @override
  Password get currentPassword;
  @override
  Password get newPassword;
  @override
  Password get confirmation;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<CinemaAuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
