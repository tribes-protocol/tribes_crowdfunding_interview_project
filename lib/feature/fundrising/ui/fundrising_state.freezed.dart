// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fundrising_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FundrisingState {
  WizardStep get initialStep => throw _privateConstructorUsedError;
  StepNavigation get currentStep => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FundrisingStateCopyWith<FundrisingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FundrisingStateCopyWith<$Res> {
  factory $FundrisingStateCopyWith(
          FundrisingState value, $Res Function(FundrisingState) then) =
      _$FundrisingStateCopyWithImpl<$Res, FundrisingState>;
  @useResult
  $Res call({WizardStep initialStep, StepNavigation currentStep});
}

/// @nodoc
class _$FundrisingStateCopyWithImpl<$Res, $Val extends FundrisingState>
    implements $FundrisingStateCopyWith<$Res> {
  _$FundrisingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialStep = null,
    Object? currentStep = null,
  }) {
    return _then(_value.copyWith(
      initialStep: null == initialStep
          ? _value.initialStep
          : initialStep // ignore: cast_nullable_to_non_nullable
              as WizardStep,
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as StepNavigation,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FundrisingStateCopyWith<$Res>
    implements $FundrisingStateCopyWith<$Res> {
  factory _$$_FundrisingStateCopyWith(
          _$_FundrisingState value, $Res Function(_$_FundrisingState) then) =
      __$$_FundrisingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WizardStep initialStep, StepNavigation currentStep});
}

/// @nodoc
class __$$_FundrisingStateCopyWithImpl<$Res>
    extends _$FundrisingStateCopyWithImpl<$Res, _$_FundrisingState>
    implements _$$_FundrisingStateCopyWith<$Res> {
  __$$_FundrisingStateCopyWithImpl(
      _$_FundrisingState _value, $Res Function(_$_FundrisingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialStep = null,
    Object? currentStep = null,
  }) {
    return _then(_$_FundrisingState(
      initialStep: null == initialStep
          ? _value.initialStep
          : initialStep // ignore: cast_nullable_to_non_nullable
              as WizardStep,
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as StepNavigation,
    ));
  }
}

/// @nodoc

class _$_FundrisingState implements _FundrisingState {
  const _$_FundrisingState(
      {this.initialStep = WizardStep.goal,
      this.currentStep = const StepNavigation(step: WizardStep.goal)});

  @override
  @JsonKey()
  final WizardStep initialStep;
  @override
  @JsonKey()
  final StepNavigation currentStep;

  @override
  String toString() {
    return 'FundrisingState(initialStep: $initialStep, currentStep: $currentStep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FundrisingState &&
            (identical(other.initialStep, initialStep) ||
                other.initialStep == initialStep) &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialStep, currentStep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FundrisingStateCopyWith<_$_FundrisingState> get copyWith =>
      __$$_FundrisingStateCopyWithImpl<_$_FundrisingState>(this, _$identity);
}

abstract class _FundrisingState implements FundrisingState {
  const factory _FundrisingState(
      {final WizardStep initialStep,
      final StepNavigation currentStep}) = _$_FundrisingState;

  @override
  WizardStep get initialStep;
  @override
  StepNavigation get currentStep;
  @override
  @JsonKey(ignore: true)
  _$$_FundrisingStateCopyWith<_$_FundrisingState> get copyWith =>
      throw _privateConstructorUsedError;
}
