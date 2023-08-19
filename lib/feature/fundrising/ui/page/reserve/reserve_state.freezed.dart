// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reserve_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReserveState {
  double get portion => throw _privateConstructorUsedError;
  Set<User> get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReserveStateCopyWith<ReserveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReserveStateCopyWith<$Res> {
  factory $ReserveStateCopyWith(
          ReserveState value, $Res Function(ReserveState) then) =
      _$ReserveStateCopyWithImpl<$Res, ReserveState>;
  @useResult
  $Res call({double portion, Set<User> users});
}

/// @nodoc
class _$ReserveStateCopyWithImpl<$Res, $Val extends ReserveState>
    implements $ReserveStateCopyWith<$Res> {
  _$ReserveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portion = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      portion: null == portion
          ? _value.portion
          : portion // ignore: cast_nullable_to_non_nullable
              as double,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Set<User>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReserveStateCopyWith<$Res>
    implements $ReserveStateCopyWith<$Res> {
  factory _$$_ReserveStateCopyWith(
          _$_ReserveState value, $Res Function(_$_ReserveState) then) =
      __$$_ReserveStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double portion, Set<User> users});
}

/// @nodoc
class __$$_ReserveStateCopyWithImpl<$Res>
    extends _$ReserveStateCopyWithImpl<$Res, _$_ReserveState>
    implements _$$_ReserveStateCopyWith<$Res> {
  __$$_ReserveStateCopyWithImpl(
      _$_ReserveState _value, $Res Function(_$_ReserveState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portion = null,
    Object? users = null,
  }) {
    return _then(_$_ReserveState(
      portion: null == portion
          ? _value.portion
          : portion // ignore: cast_nullable_to_non_nullable
              as double,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as Set<User>,
    ));
  }
}

/// @nodoc

class _$_ReserveState extends _ReserveState {
  const _$_ReserveState({this.portion = 5, final Set<User> users = const {}})
      : _users = users,
        super._();

  @override
  @JsonKey()
  final double portion;
  final Set<User> _users;
  @override
  @JsonKey()
  Set<User> get users {
    if (_users is EqualUnmodifiableSetView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_users);
  }

  @override
  String toString() {
    return 'ReserveState(portion: $portion, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReserveState &&
            (identical(other.portion, portion) || other.portion == portion) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, portion, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReserveStateCopyWith<_$_ReserveState> get copyWith =>
      __$$_ReserveStateCopyWithImpl<_$_ReserveState>(this, _$identity);
}

abstract class _ReserveState extends ReserveState {
  const factory _ReserveState({final double portion, final Set<User> users}) =
      _$_ReserveState;
  const _ReserveState._() : super._();

  @override
  double get portion;
  @override
  Set<User> get users;
  @override
  @JsonKey(ignore: true)
  _$$_ReserveStateCopyWith<_$_ReserveState> get copyWith =>
      throw _privateConstructorUsedError;
}
