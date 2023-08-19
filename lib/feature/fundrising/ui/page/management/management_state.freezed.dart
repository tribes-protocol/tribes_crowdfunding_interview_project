// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'management_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ManagementState {
  Set<User> get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ManagementStateCopyWith<ManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagementStateCopyWith<$Res> {
  factory $ManagementStateCopyWith(
          ManagementState value, $Res Function(ManagementState) then) =
      _$ManagementStateCopyWithImpl<$Res, ManagementState>;
  @useResult
  $Res call({Set<User> users});
}

/// @nodoc
class _$ManagementStateCopyWithImpl<$Res, $Val extends ManagementState>
    implements $ManagementStateCopyWith<$Res> {
  _$ManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Set<User>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ManagementStateCopyWith<$Res>
    implements $ManagementStateCopyWith<$Res> {
  factory _$$_ManagementStateCopyWith(
          _$_ManagementState value, $Res Function(_$_ManagementState) then) =
      __$$_ManagementStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<User> users});
}

/// @nodoc
class __$$_ManagementStateCopyWithImpl<$Res>
    extends _$ManagementStateCopyWithImpl<$Res, _$_ManagementState>
    implements _$$_ManagementStateCopyWith<$Res> {
  __$$_ManagementStateCopyWithImpl(
      _$_ManagementState _value, $Res Function(_$_ManagementState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$_ManagementState(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as Set<User>,
    ));
  }
}

/// @nodoc

class _$_ManagementState implements _ManagementState {
  const _$_ManagementState({final Set<User> users = const {}}) : _users = users;

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
    return 'ManagementState(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ManagementState &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ManagementStateCopyWith<_$_ManagementState> get copyWith =>
      __$$_ManagementStateCopyWithImpl<_$_ManagementState>(this, _$identity);
}

abstract class _ManagementState implements ManagementState {
  const factory _ManagementState({final Set<User> users}) = _$_ManagementState;

  @override
  Set<User> get users;
  @override
  @JsonKey(ignore: true)
  _$$_ManagementStateCopyWith<_$_ManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}
