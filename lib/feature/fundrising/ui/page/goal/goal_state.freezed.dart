// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GoalState {
  AsyncValue<Token> get token => throw _privateConstructorUsedError;
  double get money => throw _privateConstructorUsedError;
  double get crypto => throw _privateConstructorUsedError;
  bool get moneyEditing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoalStateCopyWith<GoalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalStateCopyWith<$Res> {
  factory $GoalStateCopyWith(GoalState value, $Res Function(GoalState) then) =
      _$GoalStateCopyWithImpl<$Res, GoalState>;
  @useResult
  $Res call(
      {AsyncValue<Token> token,
      double money,
      double crypto,
      bool moneyEditing});
}

/// @nodoc
class _$GoalStateCopyWithImpl<$Res, $Val extends GoalState>
    implements $GoalStateCopyWith<$Res> {
  _$GoalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? money = null,
    Object? crypto = null,
    Object? moneyEditing = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Token>,
      money: null == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as double,
      crypto: null == crypto
          ? _value.crypto
          : crypto // ignore: cast_nullable_to_non_nullable
              as double,
      moneyEditing: null == moneyEditing
          ? _value.moneyEditing
          : moneyEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GoalStateCopyWith<$Res> implements $GoalStateCopyWith<$Res> {
  factory _$$_GoalStateCopyWith(
          _$_GoalState value, $Res Function(_$_GoalState) then) =
      __$$_GoalStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<Token> token,
      double money,
      double crypto,
      bool moneyEditing});
}

/// @nodoc
class __$$_GoalStateCopyWithImpl<$Res>
    extends _$GoalStateCopyWithImpl<$Res, _$_GoalState>
    implements _$$_GoalStateCopyWith<$Res> {
  __$$_GoalStateCopyWithImpl(
      _$_GoalState _value, $Res Function(_$_GoalState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? money = null,
    Object? crypto = null,
    Object? moneyEditing = null,
  }) {
    return _then(_$_GoalState(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Token>,
      money: null == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as double,
      crypto: null == crypto
          ? _value.crypto
          : crypto // ignore: cast_nullable_to_non_nullable
              as double,
      moneyEditing: null == moneyEditing
          ? _value.moneyEditing
          : moneyEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GoalState extends _GoalState {
  const _$_GoalState(
      {this.token = const AsyncLoading(),
      this.money = 0,
      this.crypto = 0,
      this.moneyEditing = true})
      : super._();

  @override
  @JsonKey()
  final AsyncValue<Token> token;
  @override
  @JsonKey()
  final double money;
  @override
  @JsonKey()
  final double crypto;
  @override
  @JsonKey()
  final bool moneyEditing;

  @override
  String toString() {
    return 'GoalState(token: $token, money: $money, crypto: $crypto, moneyEditing: $moneyEditing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoalState &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.money, money) || other.money == money) &&
            (identical(other.crypto, crypto) || other.crypto == crypto) &&
            (identical(other.moneyEditing, moneyEditing) ||
                other.moneyEditing == moneyEditing));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, token, money, crypto, moneyEditing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GoalStateCopyWith<_$_GoalState> get copyWith =>
      __$$_GoalStateCopyWithImpl<_$_GoalState>(this, _$identity);
}

abstract class _GoalState extends GoalState {
  const factory _GoalState(
      {final AsyncValue<Token> token,
      final double money,
      final double crypto,
      final bool moneyEditing}) = _$_GoalState;
  const _GoalState._() : super._();

  @override
  AsyncValue<Token> get token;
  @override
  double get money;
  @override
  double get crypto;
  @override
  bool get moneyEditing;
  @override
  @JsonKey(ignore: true)
  _$$_GoalStateCopyWith<_$_GoalState> get copyWith =>
      throw _privateConstructorUsedError;
}
