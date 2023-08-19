// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rules_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RulesState {
  Overfunding? get overfunding => throw _privateConstructorUsedError;
  Underfunding? get underfunding => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RulesStateCopyWith<RulesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RulesStateCopyWith<$Res> {
  factory $RulesStateCopyWith(
          RulesState value, $Res Function(RulesState) then) =
      _$RulesStateCopyWithImpl<$Res, RulesState>;
  @useResult
  $Res call({Overfunding? overfunding, Underfunding? underfunding});
}

/// @nodoc
class _$RulesStateCopyWithImpl<$Res, $Val extends RulesState>
    implements $RulesStateCopyWith<$Res> {
  _$RulesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overfunding = freezed,
    Object? underfunding = freezed,
  }) {
    return _then(_value.copyWith(
      overfunding: freezed == overfunding
          ? _value.overfunding
          : overfunding // ignore: cast_nullable_to_non_nullable
              as Overfunding?,
      underfunding: freezed == underfunding
          ? _value.underfunding
          : underfunding // ignore: cast_nullable_to_non_nullable
              as Underfunding?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RulesStateCopyWith<$Res>
    implements $RulesStateCopyWith<$Res> {
  factory _$$_RulesStateCopyWith(
          _$_RulesState value, $Res Function(_$_RulesState) then) =
      __$$_RulesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Overfunding? overfunding, Underfunding? underfunding});
}

/// @nodoc
class __$$_RulesStateCopyWithImpl<$Res>
    extends _$RulesStateCopyWithImpl<$Res, _$_RulesState>
    implements _$$_RulesStateCopyWith<$Res> {
  __$$_RulesStateCopyWithImpl(
      _$_RulesState _value, $Res Function(_$_RulesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overfunding = freezed,
    Object? underfunding = freezed,
  }) {
    return _then(_$_RulesState(
      overfunding: freezed == overfunding
          ? _value.overfunding
          : overfunding // ignore: cast_nullable_to_non_nullable
              as Overfunding?,
      underfunding: freezed == underfunding
          ? _value.underfunding
          : underfunding // ignore: cast_nullable_to_non_nullable
              as Underfunding?,
    ));
  }
}

/// @nodoc

class _$_RulesState extends _RulesState {
  const _$_RulesState({this.overfunding, this.underfunding}) : super._();

  @override
  final Overfunding? overfunding;
  @override
  final Underfunding? underfunding;

  @override
  String toString() {
    return 'RulesState(overfunding: $overfunding, underfunding: $underfunding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RulesState &&
            (identical(other.overfunding, overfunding) ||
                other.overfunding == overfunding) &&
            (identical(other.underfunding, underfunding) ||
                other.underfunding == underfunding));
  }

  @override
  int get hashCode => Object.hash(runtimeType, overfunding, underfunding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RulesStateCopyWith<_$_RulesState> get copyWith =>
      __$$_RulesStateCopyWithImpl<_$_RulesState>(this, _$identity);
}

abstract class _RulesState extends RulesState {
  const factory _RulesState(
      {final Overfunding? overfunding,
      final Underfunding? underfunding}) = _$_RulesState;
  const _RulesState._() : super._();

  @override
  Overfunding? get overfunding;
  @override
  Underfunding? get underfunding;
  @override
  @JsonKey(ignore: true)
  _$$_RulesStateCopyWith<_$_RulesState> get copyWith =>
      throw _privateConstructorUsedError;
}
