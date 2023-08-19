// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'description_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DescriptionState {
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DescriptionStateCopyWith<DescriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescriptionStateCopyWith<$Res> {
  factory $DescriptionStateCopyWith(
          DescriptionState value, $Res Function(DescriptionState) then) =
      _$DescriptionStateCopyWithImpl<$Res, DescriptionState>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class _$DescriptionStateCopyWithImpl<$Res, $Val extends DescriptionState>
    implements $DescriptionStateCopyWith<$Res> {
  _$DescriptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DescriptionStateCopyWith<$Res>
    implements $DescriptionStateCopyWith<$Res> {
  factory _$$_DescriptionStateCopyWith(
          _$_DescriptionState value, $Res Function(_$_DescriptionState) then) =
      __$$_DescriptionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$_DescriptionStateCopyWithImpl<$Res>
    extends _$DescriptionStateCopyWithImpl<$Res, _$_DescriptionState>
    implements _$$_DescriptionStateCopyWith<$Res> {
  __$$_DescriptionStateCopyWithImpl(
      _$_DescriptionState _value, $Res Function(_$_DescriptionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$_DescriptionState(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionState extends _DescriptionState {
  const _$_DescriptionState({this.description = ''}) : super._();

  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'DescriptionState(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DescriptionState &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DescriptionStateCopyWith<_$_DescriptionState> get copyWith =>
      __$$_DescriptionStateCopyWithImpl<_$_DescriptionState>(this, _$identity);
}

abstract class _DescriptionState extends DescriptionState {
  const factory _DescriptionState({final String description}) =
      _$_DescriptionState;
  const _DescriptionState._() : super._();

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_DescriptionStateCopyWith<_$_DescriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}
