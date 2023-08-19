// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visual_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VisualState {
  TribeVisualType get visualType => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VisualStateCopyWith<VisualState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisualStateCopyWith<$Res> {
  factory $VisualStateCopyWith(
          VisualState value, $Res Function(VisualState) then) =
      _$VisualStateCopyWithImpl<$Res, VisualState>;
  @useResult
  $Res call({TribeVisualType visualType, Color color});

  $TribeVisualTypeCopyWith<$Res> get visualType;
}

/// @nodoc
class _$VisualStateCopyWithImpl<$Res, $Val extends VisualState>
    implements $VisualStateCopyWith<$Res> {
  _$VisualStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visualType = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      visualType: null == visualType
          ? _value.visualType
          : visualType // ignore: cast_nullable_to_non_nullable
              as TribeVisualType,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TribeVisualTypeCopyWith<$Res> get visualType {
    return $TribeVisualTypeCopyWith<$Res>(_value.visualType, (value) {
      return _then(_value.copyWith(visualType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VisualStateCopyWith<$Res>
    implements $VisualStateCopyWith<$Res> {
  factory _$$_VisualStateCopyWith(
          _$_VisualState value, $Res Function(_$_VisualState) then) =
      __$$_VisualStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TribeVisualType visualType, Color color});

  @override
  $TribeVisualTypeCopyWith<$Res> get visualType;
}

/// @nodoc
class __$$_VisualStateCopyWithImpl<$Res>
    extends _$VisualStateCopyWithImpl<$Res, _$_VisualState>
    implements _$$_VisualStateCopyWith<$Res> {
  __$$_VisualStateCopyWithImpl(
      _$_VisualState _value, $Res Function(_$_VisualState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visualType = null,
    Object? color = null,
  }) {
    return _then(_$_VisualState(
      visualType: null == visualType
          ? _value.visualType
          : visualType // ignore: cast_nullable_to_non_nullable
              as TribeVisualType,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_VisualState implements _VisualState {
  const _$_VisualState(
      {this.visualType = const TribeVisualType.emoji(emoji: '😀'),
      this.color = const Color(0xFFF60909)});

  @override
  @JsonKey()
  final TribeVisualType visualType;
  @override
  @JsonKey()
  final Color color;

  @override
  String toString() {
    return 'VisualState(visualType: $visualType, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VisualState &&
            (identical(other.visualType, visualType) ||
                other.visualType == visualType) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visualType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VisualStateCopyWith<_$_VisualState> get copyWith =>
      __$$_VisualStateCopyWithImpl<_$_VisualState>(this, _$identity);
}

abstract class _VisualState implements VisualState {
  const factory _VisualState(
      {final TribeVisualType visualType, final Color color}) = _$_VisualState;

  @override
  TribeVisualType get visualType;
  @override
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$$_VisualStateCopyWith<_$_VisualState> get copyWith =>
      throw _privateConstructorUsedError;
}
