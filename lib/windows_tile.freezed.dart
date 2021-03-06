// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'windows_tile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$_ActionTearOff {
  const _$_ActionTearOff();

  _None none() {
    return const _None();
  }

  _Hovered hovered({required ui.Offset position}) {
    return _Hovered(
      position: position,
    );
  }

  _Tapped tapped({required ui.Offset position, required double progress}) {
    return _Tapped(
      position: position,
      progress: progress,
    );
  }
}

/// @nodoc
const _$Action = _$_ActionTearOff();

/// @nodoc
mixin _$_Action {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(ui.Offset position) hovered,
    required TResult Function(ui.Offset position, double progress) tapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(ui.Offset position)? hovered,
    TResult Function(ui.Offset position, double progress)? tapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(ui.Offset position)? hovered,
    TResult Function(ui.Offset position, double progress)? tapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Hovered value) hovered,
    required TResult Function(_Tapped value) tapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Hovered value)? hovered,
    TResult Function(_Tapped value)? tapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Hovered value)? hovered,
    TResult Function(_Tapped value)? tapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ActionCopyWith<$Res> {
  factory _$ActionCopyWith(_Action value, $Res Function(_Action) then) =
      __$ActionCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionCopyWithImpl<$Res> implements _$ActionCopyWith<$Res> {
  __$ActionCopyWithImpl(this._value, this._then);

  final _Action _value;
  // ignore: unused_field
  final $Res Function(_Action) _then;
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res> extends __$ActionCopyWithImpl<$Res>
    implements _$NoneCopyWith<$Res> {
  __$NoneCopyWithImpl(_None _value, $Res Function(_None) _then)
      : super(_value, (v) => _then(v as _None));

  @override
  _None get _value => super._value as _None;
}

/// @nodoc

class _$_None implements _None {
  const _$_None();

  @override
  String toString() {
    return '_Action.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(ui.Offset position) hovered,
    required TResult Function(ui.Offset position, double progress) tapped,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(ui.Offset position)? hovered,
    TResult Function(ui.Offset position, double progress)? tapped,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(ui.Offset position)? hovered,
    TResult Function(ui.Offset position, double progress)? tapped,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Hovered value) hovered,
    required TResult Function(_Tapped value) tapped,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Hovered value)? hovered,
    TResult Function(_Tapped value)? tapped,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Hovered value)? hovered,
    TResult Function(_Tapped value)? tapped,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None implements _Action {
  const factory _None() = _$_None;
}

/// @nodoc
abstract class _$HoveredCopyWith<$Res> {
  factory _$HoveredCopyWith(_Hovered value, $Res Function(_Hovered) then) =
      __$HoveredCopyWithImpl<$Res>;
  $Res call({ui.Offset position});
}

/// @nodoc
class __$HoveredCopyWithImpl<$Res> extends __$ActionCopyWithImpl<$Res>
    implements _$HoveredCopyWith<$Res> {
  __$HoveredCopyWithImpl(_Hovered _value, $Res Function(_Hovered) _then)
      : super(_value, (v) => _then(v as _Hovered));

  @override
  _Hovered get _value => super._value as _Hovered;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_Hovered(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as ui.Offset,
    ));
  }
}

/// @nodoc

class _$_Hovered implements _Hovered {
  const _$_Hovered({required this.position});

  @override
  final ui.Offset position;

  @override
  String toString() {
    return '_Action.hovered(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Hovered &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$HoveredCopyWith<_Hovered> get copyWith =>
      __$HoveredCopyWithImpl<_Hovered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(ui.Offset position) hovered,
    required TResult Function(ui.Offset position, double progress) tapped,
  }) {
    return hovered(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(ui.Offset position)? hovered,
    TResult Function(ui.Offset position, double progress)? tapped,
  }) {
    return hovered?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(ui.Offset position)? hovered,
    TResult Function(ui.Offset position, double progress)? tapped,
    required TResult orElse(),
  }) {
    if (hovered != null) {
      return hovered(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Hovered value) hovered,
    required TResult Function(_Tapped value) tapped,
  }) {
    return hovered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Hovered value)? hovered,
    TResult Function(_Tapped value)? tapped,
  }) {
    return hovered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Hovered value)? hovered,
    TResult Function(_Tapped value)? tapped,
    required TResult orElse(),
  }) {
    if (hovered != null) {
      return hovered(this);
    }
    return orElse();
  }
}

abstract class _Hovered implements _Action {
  const factory _Hovered({required ui.Offset position}) = _$_Hovered;

  ui.Offset get position;
  @JsonKey(ignore: true)
  _$HoveredCopyWith<_Hovered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TappedCopyWith<$Res> {
  factory _$TappedCopyWith(_Tapped value, $Res Function(_Tapped) then) =
      __$TappedCopyWithImpl<$Res>;
  $Res call({ui.Offset position, double progress});
}

/// @nodoc
class __$TappedCopyWithImpl<$Res> extends __$ActionCopyWithImpl<$Res>
    implements _$TappedCopyWith<$Res> {
  __$TappedCopyWithImpl(_Tapped _value, $Res Function(_Tapped) _then)
      : super(_value, (v) => _then(v as _Tapped));

  @override
  _Tapped get _value => super._value as _Tapped;

  @override
  $Res call({
    Object? position = freezed,
    Object? progress = freezed,
  }) {
    return _then(_Tapped(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as ui.Offset,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Tapped implements _Tapped {
  const _$_Tapped({required this.position, required this.progress});

  @override
  final ui.Offset position;
  @override
  final double progress;

  @override
  String toString() {
    return '_Action.tapped(position: $position, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tapped &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.progress, progress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(progress));

  @JsonKey(ignore: true)
  @override
  _$TappedCopyWith<_Tapped> get copyWith =>
      __$TappedCopyWithImpl<_Tapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(ui.Offset position) hovered,
    required TResult Function(ui.Offset position, double progress) tapped,
  }) {
    return tapped(position, progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(ui.Offset position)? hovered,
    TResult Function(ui.Offset position, double progress)? tapped,
  }) {
    return tapped?.call(position, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(ui.Offset position)? hovered,
    TResult Function(ui.Offset position, double progress)? tapped,
    required TResult orElse(),
  }) {
    if (tapped != null) {
      return tapped(position, progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Hovered value) hovered,
    required TResult Function(_Tapped value) tapped,
  }) {
    return tapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Hovered value)? hovered,
    TResult Function(_Tapped value)? tapped,
  }) {
    return tapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Hovered value)? hovered,
    TResult Function(_Tapped value)? tapped,
    required TResult orElse(),
  }) {
    if (tapped != null) {
      return tapped(this);
    }
    return orElse();
  }
}

abstract class _Tapped implements _Action {
  const factory _Tapped(
      {required ui.Offset position, required double progress}) = _$_Tapped;

  ui.Offset get position;
  double get progress;
  @JsonKey(ignore: true)
  _$TappedCopyWith<_Tapped> get copyWith => throw _privateConstructorUsedError;
}
