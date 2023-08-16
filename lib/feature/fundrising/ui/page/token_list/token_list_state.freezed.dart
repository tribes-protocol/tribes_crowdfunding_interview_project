// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TokenListState {
  AsyncValue<List<Token>> get tokens => throw _privateConstructorUsedError;
  List<Token> get filteredTokens => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TokenListStateCopyWith<TokenListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenListStateCopyWith<$Res> {
  factory $TokenListStateCopyWith(
          TokenListState value, $Res Function(TokenListState) then) =
      _$TokenListStateCopyWithImpl<$Res, TokenListState>;
  @useResult
  $Res call({AsyncValue<List<Token>> tokens, List<Token> filteredTokens});
}

/// @nodoc
class _$TokenListStateCopyWithImpl<$Res, $Val extends TokenListState>
    implements $TokenListStateCopyWith<$Res> {
  _$TokenListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? filteredTokens = null,
  }) {
    return _then(_value.copyWith(
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Token>>,
      filteredTokens: null == filteredTokens
          ? _value.filteredTokens
          : filteredTokens // ignore: cast_nullable_to_non_nullable
              as List<Token>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokenListStateCopyWith<$Res>
    implements $TokenListStateCopyWith<$Res> {
  factory _$$_TokenListStateCopyWith(
          _$_TokenListState value, $Res Function(_$_TokenListState) then) =
      __$$_TokenListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<Token>> tokens, List<Token> filteredTokens});
}

/// @nodoc
class __$$_TokenListStateCopyWithImpl<$Res>
    extends _$TokenListStateCopyWithImpl<$Res, _$_TokenListState>
    implements _$$_TokenListStateCopyWith<$Res> {
  __$$_TokenListStateCopyWithImpl(
      _$_TokenListState _value, $Res Function(_$_TokenListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? filteredTokens = null,
  }) {
    return _then(_$_TokenListState(
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Token>>,
      filteredTokens: null == filteredTokens
          ? _value._filteredTokens
          : filteredTokens // ignore: cast_nullable_to_non_nullable
              as List<Token>,
    ));
  }
}

/// @nodoc

class _$_TokenListState implements _TokenListState {
  const _$_TokenListState(
      {this.tokens = const AsyncLoading(),
      final List<Token> filteredTokens = const []})
      : _filteredTokens = filteredTokens;

  @override
  @JsonKey()
  final AsyncValue<List<Token>> tokens;
  final List<Token> _filteredTokens;
  @override
  @JsonKey()
  List<Token> get filteredTokens {
    if (_filteredTokens is EqualUnmodifiableListView) return _filteredTokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredTokens);
  }

  @override
  String toString() {
    return 'TokenListState(tokens: $tokens, filteredTokens: $filteredTokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenListState &&
            (identical(other.tokens, tokens) || other.tokens == tokens) &&
            const DeepCollectionEquality()
                .equals(other._filteredTokens, _filteredTokens));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tokens,
      const DeepCollectionEquality().hash(_filteredTokens));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenListStateCopyWith<_$_TokenListState> get copyWith =>
      __$$_TokenListStateCopyWithImpl<_$_TokenListState>(this, _$identity);
}

abstract class _TokenListState implements TokenListState {
  const factory _TokenListState(
      {final AsyncValue<List<Token>> tokens,
      final List<Token> filteredTokens}) = _$_TokenListState;

  @override
  AsyncValue<List<Token>> get tokens;
  @override
  List<Token> get filteredTokens;
  @override
  @JsonKey(ignore: true)
  _$$_TokenListStateCopyWith<_$_TokenListState> get copyWith =>
      throw _privateConstructorUsedError;
}
