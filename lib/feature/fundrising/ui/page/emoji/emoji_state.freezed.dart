// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emoji_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmojiState {
  String get emoji => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmojiStateCopyWith<EmojiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmojiStateCopyWith<$Res> {
  factory $EmojiStateCopyWith(
          EmojiState value, $Res Function(EmojiState) then) =
      _$EmojiStateCopyWithImpl<$Res, EmojiState>;
  @useResult
  $Res call({String emoji, Color color});
}

/// @nodoc
class _$EmojiStateCopyWithImpl<$Res, $Val extends EmojiState>
    implements $EmojiStateCopyWith<$Res> {
  _$EmojiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmojiStateCopyWith<$Res>
    implements $EmojiStateCopyWith<$Res> {
  factory _$$_EmojiStateCopyWith(
          _$_EmojiState value, $Res Function(_$_EmojiState) then) =
      __$$_EmojiStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String emoji, Color color});
}

/// @nodoc
class __$$_EmojiStateCopyWithImpl<$Res>
    extends _$EmojiStateCopyWithImpl<$Res, _$_EmojiState>
    implements _$$_EmojiStateCopyWith<$Res> {
  __$$_EmojiStateCopyWithImpl(
      _$_EmojiState _value, $Res Function(_$_EmojiState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
    Object? color = null,
  }) {
    return _then(_$_EmojiState(
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_EmojiState implements _EmojiState {
  const _$_EmojiState({this.emoji = '', this.color = Colors.black});

  @override
  @JsonKey()
  final String emoji;
  @override
  @JsonKey()
  final Color color;

  @override
  String toString() {
    return 'EmojiState(emoji: $emoji, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmojiState &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emoji, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmojiStateCopyWith<_$_EmojiState> get copyWith =>
      __$$_EmojiStateCopyWithImpl<_$_EmojiState>(this, _$identity);
}

abstract class _EmojiState implements EmojiState {
  const factory _EmojiState({final String emoji, final Color color}) =
      _$_EmojiState;

  @override
  String get emoji;
  @override
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$$_EmojiStateCopyWith<_$_EmojiState> get copyWith =>
      throw _privateConstructorUsedError;
}
