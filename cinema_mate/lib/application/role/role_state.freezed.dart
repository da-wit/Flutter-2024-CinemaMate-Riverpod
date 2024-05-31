// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() user,
    required TResult Function() cinema,
    required TResult Function() admin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? user,
    TResult? Function()? cinema,
    TResult? Function()? admin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? user,
    TResult Function()? cinema,
    TResult Function()? admin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(User value) user,
    required TResult Function(Cinema value) cinema,
    required TResult Function(Admin value) admin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(User value)? user,
    TResult? Function(Cinema value)? cinema,
    TResult? Function(Admin value)? admin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(User value)? user,
    TResult Function(Cinema value)? cinema,
    TResult Function(Admin value)? admin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleStateCopyWith<$Res> {
  factory $RoleStateCopyWith(RoleState value, $Res Function(RoleState) then) =
      _$RoleStateCopyWithImpl<$Res, RoleState>;
}

/// @nodoc
class _$RoleStateCopyWithImpl<$Res, $Val extends RoleState>
    implements $RoleStateCopyWith<$Res> {
  _$RoleStateCopyWithImpl(this._value, this._then);

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
    extends _$RoleStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'RoleState.initial()';
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
    required TResult Function() user,
    required TResult Function() cinema,
    required TResult Function() admin,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? user,
    TResult? Function()? cinema,
    TResult? Function()? admin,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? user,
    TResult Function()? cinema,
    TResult Function()? admin,
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
    required TResult Function(User value) user,
    required TResult Function(Cinema value) cinema,
    required TResult Function(Admin value) admin,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(User value)? user,
    TResult? Function(Cinema value)? cinema,
    TResult? Function(Admin value)? admin,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(User value)? user,
    TResult Function(Cinema value)? cinema,
    TResult Function(Admin value)? admin,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RoleState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$RoleStateCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserImpl implements User {
  const _$UserImpl();

  @override
  String toString() {
    return 'RoleState.user()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() user,
    required TResult Function() cinema,
    required TResult Function() admin,
  }) {
    return user();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? user,
    TResult? Function()? cinema,
    TResult? Function()? admin,
  }) {
    return user?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? user,
    TResult Function()? cinema,
    TResult Function()? admin,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(User value) user,
    required TResult Function(Cinema value) cinema,
    required TResult Function(Admin value) admin,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(User value)? user,
    TResult? Function(Cinema value)? cinema,
    TResult? Function(Admin value)? admin,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(User value)? user,
    TResult Function(Cinema value)? cinema,
    TResult Function(Admin value)? admin,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class User implements RoleState {
  const factory User() = _$UserImpl;
}

/// @nodoc
abstract class _$$CinemaImplCopyWith<$Res> {
  factory _$$CinemaImplCopyWith(
          _$CinemaImpl value, $Res Function(_$CinemaImpl) then) =
      __$$CinemaImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CinemaImplCopyWithImpl<$Res>
    extends _$RoleStateCopyWithImpl<$Res, _$CinemaImpl>
    implements _$$CinemaImplCopyWith<$Res> {
  __$$CinemaImplCopyWithImpl(
      _$CinemaImpl _value, $Res Function(_$CinemaImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CinemaImpl implements Cinema {
  const _$CinemaImpl();

  @override
  String toString() {
    return 'RoleState.cinema()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CinemaImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() user,
    required TResult Function() cinema,
    required TResult Function() admin,
  }) {
    return cinema();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? user,
    TResult? Function()? cinema,
    TResult? Function()? admin,
  }) {
    return cinema?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? user,
    TResult Function()? cinema,
    TResult Function()? admin,
    required TResult orElse(),
  }) {
    if (cinema != null) {
      return cinema();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(User value) user,
    required TResult Function(Cinema value) cinema,
    required TResult Function(Admin value) admin,
  }) {
    return cinema(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(User value)? user,
    TResult? Function(Cinema value)? cinema,
    TResult? Function(Admin value)? admin,
  }) {
    return cinema?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(User value)? user,
    TResult Function(Cinema value)? cinema,
    TResult Function(Admin value)? admin,
    required TResult orElse(),
  }) {
    if (cinema != null) {
      return cinema(this);
    }
    return orElse();
  }
}

abstract class Cinema implements RoleState {
  const factory Cinema() = _$CinemaImpl;
}

/// @nodoc
abstract class _$$AdminImplCopyWith<$Res> {
  factory _$$AdminImplCopyWith(
          _$AdminImpl value, $Res Function(_$AdminImpl) then) =
      __$$AdminImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AdminImplCopyWithImpl<$Res>
    extends _$RoleStateCopyWithImpl<$Res, _$AdminImpl>
    implements _$$AdminImplCopyWith<$Res> {
  __$$AdminImplCopyWithImpl(
      _$AdminImpl _value, $Res Function(_$AdminImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AdminImpl implements Admin {
  const _$AdminImpl();

  @override
  String toString() {
    return 'RoleState.admin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AdminImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() user,
    required TResult Function() cinema,
    required TResult Function() admin,
  }) {
    return admin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? user,
    TResult? Function()? cinema,
    TResult? Function()? admin,
  }) {
    return admin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? user,
    TResult Function()? cinema,
    TResult Function()? admin,
    required TResult orElse(),
  }) {
    if (admin != null) {
      return admin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(User value) user,
    required TResult Function(Cinema value) cinema,
    required TResult Function(Admin value) admin,
  }) {
    return admin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(User value)? user,
    TResult? Function(Cinema value)? cinema,
    TResult? Function(Admin value)? admin,
  }) {
    return admin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(User value)? user,
    TResult Function(Cinema value)? cinema,
    TResult Function(Admin value)? admin,
    required TResult orElse(),
  }) {
    if (admin != null) {
      return admin(this);
    }
    return orElse();
  }
}

abstract class Admin implements RoleState {
  const factory Admin() = _$AdminImpl;
}
