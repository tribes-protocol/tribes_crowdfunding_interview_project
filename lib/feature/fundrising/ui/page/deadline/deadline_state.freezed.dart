// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deadline_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeadlineState {
  List<int> get deadlines => throw _privateConstructorUsedError;
  int? get customDeadline => throw _privateConstructorUsedError;
  int? get selected => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeadlineStateCopyWith<DeadlineState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeadlineStateCopyWith<$Res> {
  factory $DeadlineStateCopyWith(
          DeadlineState value, $Res Function(DeadlineState) then) =
      _$DeadlineStateCopyWithImpl<$Res, DeadlineState>;
  @useResult
  $Res call(
      {List<int> deadlines,
      int? customDeadline,
      int? selected,
      DateTime? deadline});
}

/// @nodoc
class _$DeadlineStateCopyWithImpl<$Res, $Val extends DeadlineState>
    implements $DeadlineStateCopyWith<$Res> {
  _$DeadlineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deadlines = null,
    Object? customDeadline = freezed,
    Object? selected = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_value.copyWith(
      deadlines: null == deadlines
          ? _value.deadlines
          : deadlines // ignore: cast_nullable_to_non_nullable
              as List<int>,
      customDeadline: freezed == customDeadline
          ? _value.customDeadline
          : customDeadline // ignore: cast_nullable_to_non_nullable
              as int?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as int?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeadlineStateCopyWith<$Res>
    implements $DeadlineStateCopyWith<$Res> {
  factory _$$_DeadlineStateCopyWith(
          _$_DeadlineState value, $Res Function(_$_DeadlineState) then) =
      __$$_DeadlineStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int> deadlines,
      int? customDeadline,
      int? selected,
      DateTime? deadline});
}

/// @nodoc
class __$$_DeadlineStateCopyWithImpl<$Res>
    extends _$DeadlineStateCopyWithImpl<$Res, _$_DeadlineState>
    implements _$$_DeadlineStateCopyWith<$Res> {
  __$$_DeadlineStateCopyWithImpl(
      _$_DeadlineState _value, $Res Function(_$_DeadlineState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deadlines = null,
    Object? customDeadline = freezed,
    Object? selected = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_$_DeadlineState(
      deadlines: null == deadlines
          ? _value._deadlines
          : deadlines // ignore: cast_nullable_to_non_nullable
              as List<int>,
      customDeadline: freezed == customDeadline
          ? _value.customDeadline
          : customDeadline // ignore: cast_nullable_to_non_nullable
              as int?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as int?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_DeadlineState extends _DeadlineState {
  const _$_DeadlineState(
      {final List<int> deadlines = const [7, 14, 28],
      this.customDeadline,
      this.selected,
      this.deadline})
      : _deadlines = deadlines,
        super._();

  final List<int> _deadlines;
  @override
  @JsonKey()
  List<int> get deadlines {
    if (_deadlines is EqualUnmodifiableListView) return _deadlines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deadlines);
  }

  @override
  final int? customDeadline;
  @override
  final int? selected;
  @override
  final DateTime? deadline;

  @override
  String toString() {
    return 'DeadlineState(deadlines: $deadlines, customDeadline: $customDeadline, selected: $selected, deadline: $deadline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeadlineState &&
            const DeepCollectionEquality()
                .equals(other._deadlines, _deadlines) &&
            (identical(other.customDeadline, customDeadline) ||
                other.customDeadline == customDeadline) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_deadlines),
      customDeadline,
      selected,
      deadline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeadlineStateCopyWith<_$_DeadlineState> get copyWith =>
      __$$_DeadlineStateCopyWithImpl<_$_DeadlineState>(this, _$identity);
}

abstract class _DeadlineState extends DeadlineState {
  const factory _DeadlineState(
      {final List<int> deadlines,
      final int? customDeadline,
      final int? selected,
      final DateTime? deadline}) = _$_DeadlineState;
  const _DeadlineState._() : super._();

  @override
  List<int> get deadlines;
  @override
  int? get customDeadline;
  @override
  int? get selected;
  @override
  DateTime? get deadline;
  @override
  @JsonKey(ignore: true)
  _$$_DeadlineStateCopyWith<_$_DeadlineState> get copyWith =>
      throw _privateConstructorUsedError;
}
