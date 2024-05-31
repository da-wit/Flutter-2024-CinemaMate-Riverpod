// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_user_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ManageUserAccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Username currentUsername,
            Username newUsername,
            bool isSubmitting,
            bool showErrorMessages,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        changeUsername,
    required TResult Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            Username currentUsername,
            Username newUsername,
            bool isSubmitting,
            bool showErrorMessages,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        changeUsername,
    TResult? Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Username currentUsername,
            Username newUsername,
            bool isSubmitting,
            bool showErrorMessages,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        changeUsername,
    TResult Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ChangeUsername value) changeUsername,
    required TResult Function(ChangePassword value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ChangeUsername value)? changeUsername,
    TResult? Function(ChangePassword value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(ChangePassword value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageUserAccountStateCopyWith<$Res> {
  factory $ManageUserAccountStateCopyWith(ManageUserAccountState value,
          $Res Function(ManageUserAccountState) then) =
      _$ManageUserAccountStateCopyWithImpl<$Res, ManageUserAccountState>;
}

/// @nodoc
class _$ManageUserAccountStateCopyWithImpl<$Res,
        $Val extends ManageUserAccountState>
    implements $ManageUserAccountStateCopyWith<$Res> {
  _$ManageUserAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ManageUserAccountStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ManageUserAccountState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Username currentUsername,
            Username newUsername,
            bool isSubmitting,
            bool showErrorMessages,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        changeUsername,
    required TResult Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        changePassword,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            Username currentUsername,
            Username newUsername,
            bool isSubmitting,
            bool showErrorMessages,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        changeUsername,
    TResult? Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        changePassword,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Username currentUsername,
            Username newUsername,
            bool isSubmitting,
            bool showErrorMessages,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        changeUsername,
    TResult Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        changePassword,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ChangeUsername value) changeUsername,
    required TResult Function(ChangePassword value) changePassword,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ChangeUsername value)? changeUsername,
    TResult? Function(ChangePassword value)? changePassword,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ManageUserAccountState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ChangeUsernameImplCopyWith<$Res> {
  factory _$$ChangeUsernameImplCopyWith(_$ChangeUsernameImpl value,
          $Res Function(_$ChangeUsernameImpl) then) =
      __$$ChangeUsernameImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Username currentUsername,
      Username newUsername,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$ChangeUsernameImplCopyWithImpl<$Res>
    extends _$ManageUserAccountStateCopyWithImpl<$Res, _$ChangeUsernameImpl>
    implements _$$ChangeUsernameImplCopyWith<$Res> {
  __$$ChangeUsernameImplCopyWithImpl(
      _$ChangeUsernameImpl _value, $Res Function(_$ChangeUsernameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUsername = null,
    Object? newUsername = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$ChangeUsernameImpl(
      currentUsername: null == currentUsername
          ? _value.currentUsername
          : currentUsername // ignore: cast_nullable_to_non_nullable
              as Username,
      newUsername: null == newUsername
          ? _value.newUsername
          : newUsername // ignore: cast_nullable_to_non_nullable
              as Username,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$ChangeUsernameImpl implements ChangeUsername {
  const _$ChangeUsernameImpl(
      {required this.currentUsername,
      required this.newUsername,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.authFailureOrSuccessOption});

  @override
  final Username currentUsername;
  @override
  final Username newUsername;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'ManageUserAccountState.changeUsername(currentUsername: $currentUsername, newUsername: $newUsername, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeUsernameImpl &&
            (identical(other.currentUsername, currentUsername) ||
                other.currentUsername == currentUsername) &&
            (identical(other.newUsername, newUsername) ||
                other.newUsername == newUsername) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUsername, newUsername,
      isSubmitting, showErrorMessages, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeUsernameImplCopyWith<_$ChangeUsernameImpl> get copyWith =>
      __$$ChangeUsernameImplCopyWithImpl<_$ChangeUsernameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Username currentUsername,
            Username newUsername,
            bool isSubmitting,
            bool showErrorMessages,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        changeUsername,
    required TResult Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        changePassword,
  }) {
    return changeUsername(currentUsername, newUsername, isSubmitting,
        showErrorMessages, authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            Username currentUsername,
            Username newUsername,
            bool isSubmitting,
            bool showErrorMessages,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        changeUsername,
    TResult? Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        changePassword,
  }) {
    return changeUsername?.call(currentUsername, newUsername, isSubmitting,
        showErrorMessages, authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Username currentUsername,
            Username newUsername,
            bool isSubmitting,
            bool showErrorMessages,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        changeUsername,
    TResult Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        changePassword,
    required TResult orElse(),
  }) {
    if (changeUsername != null) {
      return changeUsername(currentUsername, newUsername, isSubmitting,
          showErrorMessages, authFailureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ChangeUsername value) changeUsername,
    required TResult Function(ChangePassword value) changePassword,
  }) {
    return changeUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ChangeUsername value)? changeUsername,
    TResult? Function(ChangePassword value)? changePassword,
  }) {
    return changeUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changeUsername != null) {
      return changeUsername(this);
    }
    return orElse();
  }
}

abstract class ChangeUsername implements ManageUserAccountState {
  const factory ChangeUsername(
      {required final Username currentUsername,
      required final Username newUsername,
      required final bool isSubmitting,
      required final bool showErrorMessages,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$ChangeUsernameImpl;

  Username get currentUsername;
  Username get newUsername;
  bool get isSubmitting;
  bool get showErrorMessages;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @JsonKey(ignore: true)
  _$$ChangeUsernameImplCopyWith<_$ChangeUsernameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordImplCopyWith<$Res> {
  factory _$$ChangePasswordImplCopyWith(_$ChangePasswordImpl value,
          $Res Function(_$ChangePasswordImpl) then) =
      __$$ChangePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Password currentPassword,
      Password newPassword,
      Password confirmation,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$ChangePasswordImplCopyWithImpl<$Res>
    extends _$ManageUserAccountStateCopyWithImpl<$Res, _$ChangePasswordImpl>
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
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$ChangePasswordImpl implements ChangePassword {
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
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'ManageUserAccountState.changePassword(currentPassword: $currentPassword, newPassword: $newPassword, confirmation: $confirmation, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
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
    required TResult Function() initial,
    required TResult Function(
            Username currentUsername,
            Username newUsername,
            bool isSubmitting,
            bool showErrorMessages,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        changeUsername,
    required TResult Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        changePassword,
  }) {
    return changePassword(currentPassword, newPassword, confirmation,
        showErrorMessages, isSubmitting, authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            Username currentUsername,
            Username newUsername,
            bool isSubmitting,
            bool showErrorMessages,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        changeUsername,
    TResult? Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        changePassword,
  }) {
    return changePassword?.call(currentPassword, newPassword, confirmation,
        showErrorMessages, isSubmitting, authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Username currentUsername,
            Username newUsername,
            bool isSubmitting,
            bool showErrorMessages,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        changeUsername,
    TResult Function(
            Password currentPassword,
            Password newPassword,
            Password confirmation,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
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
    required TResult Function(Initial value) initial,
    required TResult Function(ChangeUsername value) changeUsername,
    required TResult Function(ChangePassword value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ChangeUsername value)? changeUsername,
    TResult? Function(ChangePassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class ChangePassword implements ManageUserAccountState {
  const factory ChangePassword(
      {required final Password currentPassword,
      required final Password newPassword,
      required final Password confirmation,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$ChangePasswordImpl;

  Password get currentPassword;
  Password get newPassword;
  Password get confirmation;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @JsonKey(ignore: true)
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
