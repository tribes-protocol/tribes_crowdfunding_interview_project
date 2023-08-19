// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TokenState {
  String? get error => throw _privateConstructorUsedError;
  String get tokenName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TokenStateCopyWith<TokenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenStateCopyWith<$Res> {
  factory $TokenStateCopyWith(
          TokenState value, $Res Function(TokenState) then) =
      _$TokenStateCopyWithImpl<$Res, TokenState>;
  @useResult
  $Res call({String? error, String tokenName});
}

/// @nodoc
class _$TokenStateCopyWithImpl<$Res, $Val extends TokenState>
    implements $TokenStateCopyWith<$Res> {
  _$TokenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? tokenName = null,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenName: null == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokenStateCopyWith<$Res>
    implements $TokenStateCopyWith<$Res> {
  factory _$$_TokenStateCopyWith(
          _$_TokenState value, $Res Function(_$_TokenState) then) =
      __$$_TokenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, String tokenName});
}

/// @nodoc
class __$$_TokenStateCopyWithImpl<$Res>
    extends _$TokenStateCopyWithImpl<$Res, _$_TokenState>
    implements _$$_TokenStateCopyWith<$Res> {
  __$$_TokenStateCopyWithImpl(
      _$_TokenState _value, $Res Function(_$_TokenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? tokenName = null,
  }) {
    return _then(_$_TokenState(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenName: null == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TokenState extends _TokenState {
  const _$_TokenState({this.error, this.tokenName = ''}) : super._();

  @override
  final String? error;
  @override
  @JsonKey()
  final String tokenName;

  @override
  String toString() {
    return 'TokenState(error: $error, tokenName: $tokenName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenState &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, tokenName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenStateCopyWith<_$_TokenState> get copyWith =>
      __$$_TokenStateCopyWithImpl<_$_TokenState>(this, _$identity);
}

abstract class _TokenState extends TokenState {
  const factory _TokenState({final String? error, final String tokenName}) =
      _$_TokenState;
  const _TokenState._() : super._();

  @override
  String? get error;
  @override
  String get tokenName;
  @override
  @JsonKey(ignore: true)
  _$$_TokenStateCopyWith<_$_TokenState> get copyWith =>
      throw _privateConstructorUsedError;
}
