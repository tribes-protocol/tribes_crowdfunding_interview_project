// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectState {
  String get projectName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectStateCopyWith<ProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(
          ProjectState value, $Res Function(ProjectState) then) =
      _$ProjectStateCopyWithImpl<$Res, ProjectState>;
  @useResult
  $Res call({String projectName});
}

/// @nodoc
class _$ProjectStateCopyWithImpl<$Res, $Val extends ProjectState>
    implements $ProjectStateCopyWith<$Res> {
  _$ProjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
  }) {
    return _then(_value.copyWith(
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectStateCopyWith<$Res>
    implements $ProjectStateCopyWith<$Res> {
  factory _$$_ProjectStateCopyWith(
          _$_ProjectState value, $Res Function(_$_ProjectState) then) =
      __$$_ProjectStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String projectName});
}

/// @nodoc
class __$$_ProjectStateCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res, _$_ProjectState>
    implements _$$_ProjectStateCopyWith<$Res> {
  __$$_ProjectStateCopyWithImpl(
      _$_ProjectState _value, $Res Function(_$_ProjectState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
  }) {
    return _then(_$_ProjectState(
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProjectState implements _ProjectState {
  const _$_ProjectState({this.projectName = ''});

  @override
  @JsonKey()
  final String projectName;

  @override
  String toString() {
    return 'ProjectState(projectName: $projectName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectState &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectStateCopyWith<_$_ProjectState> get copyWith =>
      __$$_ProjectStateCopyWithImpl<_$_ProjectState>(this, _$identity);
}

abstract class _ProjectState implements ProjectState {
  const factory _ProjectState({final String projectName}) = _$_ProjectState;

  @override
  String get projectName;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectStateCopyWith<_$_ProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}
