// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fundraising_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FundraisingState {
  int get steps => throw _privateConstructorUsedError;
  int get progress => throw _privateConstructorUsedError;
  TribeVisualType? get type => throw _privateConstructorUsedError;
  Color? get background => throw _privateConstructorUsedError;
  double? get money => throw _privateConstructorUsedError;
  Token? get token => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get tokenName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  Set<User> get signers => throw _privateConstructorUsedError;
  Set<User> get managers => throw _privateConstructorUsedError;
  int get managersTreshold => throw _privateConstructorUsedError;
  dynamic get lastStep => throw _privateConstructorUsedError;
  WizardStep get initialStep => throw _privateConstructorUsedError;
  StepNavigation get currentStep => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FundraisingStateCopyWith<FundraisingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FundraisingStateCopyWith<$Res> {
  factory $FundraisingStateCopyWith(
          FundraisingState value, $Res Function(FundraisingState) then) =
      _$FundraisingStateCopyWithImpl<$Res, FundraisingState>;
  @useResult
  $Res call(
      {int steps,
      int progress,
      TribeVisualType? type,
      Color? background,
      double? money,
      Token? token,
      String? name,
      String? tokenName,
      String? description,
      DateTime? deadline,
      Set<User> signers,
      Set<User> managers,
      int managersTreshold,
      dynamic lastStep,
      WizardStep initialStep,
      StepNavigation currentStep});

  $TribeVisualTypeCopyWith<$Res>? get type;
  $TokenCopyWith<$Res>? get token;
}

/// @nodoc
class _$FundraisingStateCopyWithImpl<$Res, $Val extends FundraisingState>
    implements $FundraisingStateCopyWith<$Res> {
  _$FundraisingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = null,
    Object? progress = null,
    Object? type = freezed,
    Object? background = freezed,
    Object? money = freezed,
    Object? token = freezed,
    Object? name = freezed,
    Object? tokenName = freezed,
    Object? description = freezed,
    Object? deadline = freezed,
    Object? signers = null,
    Object? managers = null,
    Object? managersTreshold = null,
    Object? lastStep = freezed,
    Object? initialStep = null,
    Object? currentStep = null,
  }) {
    return _then(_value.copyWith(
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TribeVisualType?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as Color?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as double?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenName: freezed == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      signers: null == signers
          ? _value.signers
          : signers // ignore: cast_nullable_to_non_nullable
              as Set<User>,
      managers: null == managers
          ? _value.managers
          : managers // ignore: cast_nullable_to_non_nullable
              as Set<User>,
      managersTreshold: null == managersTreshold
          ? _value.managersTreshold
          : managersTreshold // ignore: cast_nullable_to_non_nullable
              as int,
      lastStep: freezed == lastStep
          ? _value.lastStep
          : lastStep // ignore: cast_nullable_to_non_nullable
              as dynamic,
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

  @override
  @pragma('vm:prefer-inline')
  $TribeVisualTypeCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $TribeVisualTypeCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res>? get token {
    if (_value.token == null) {
      return null;
    }

    return $TokenCopyWith<$Res>(_value.token!, (value) {
      return _then(_value.copyWith(token: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FundraisingStateCopyWith<$Res>
    implements $FundraisingStateCopyWith<$Res> {
  factory _$$_FundraisingStateCopyWith(
          _$_FundraisingState value, $Res Function(_$_FundraisingState) then) =
      __$$_FundraisingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int steps,
      int progress,
      TribeVisualType? type,
      Color? background,
      double? money,
      Token? token,
      String? name,
      String? tokenName,
      String? description,
      DateTime? deadline,
      Set<User> signers,
      Set<User> managers,
      int managersTreshold,
      dynamic lastStep,
      WizardStep initialStep,
      StepNavigation currentStep});

  @override
  $TribeVisualTypeCopyWith<$Res>? get type;
  @override
  $TokenCopyWith<$Res>? get token;
}

/// @nodoc
class __$$_FundraisingStateCopyWithImpl<$Res>
    extends _$FundraisingStateCopyWithImpl<$Res, _$_FundraisingState>
    implements _$$_FundraisingStateCopyWith<$Res> {
  __$$_FundraisingStateCopyWithImpl(
      _$_FundraisingState _value, $Res Function(_$_FundraisingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = null,
    Object? progress = null,
    Object? type = freezed,
    Object? background = freezed,
    Object? money = freezed,
    Object? token = freezed,
    Object? name = freezed,
    Object? tokenName = freezed,
    Object? description = freezed,
    Object? deadline = freezed,
    Object? signers = null,
    Object? managers = null,
    Object? managersTreshold = null,
    Object? lastStep = freezed,
    Object? initialStep = null,
    Object? currentStep = null,
  }) {
    return _then(_$_FundraisingState(
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TribeVisualType?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as Color?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as double?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenName: freezed == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      signers: null == signers
          ? _value._signers
          : signers // ignore: cast_nullable_to_non_nullable
              as Set<User>,
      managers: null == managers
          ? _value._managers
          : managers // ignore: cast_nullable_to_non_nullable
              as Set<User>,
      managersTreshold: null == managersTreshold
          ? _value.managersTreshold
          : managersTreshold // ignore: cast_nullable_to_non_nullable
              as int,
      lastStep: freezed == lastStep ? _value.lastStep! : lastStep,
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

class _$_FundraisingState implements _FundraisingState {
  const _$_FundraisingState(
      {required this.steps,
      required this.progress,
      this.type,
      this.background,
      this.money,
      this.token,
      this.name,
      this.tokenName,
      this.description,
      this.deadline,
      final Set<User> signers = const {},
      final Set<User> managers = const {},
      this.managersTreshold = 1,
      this.lastStep = false,
      this.initialStep = WizardStep.goal,
      this.currentStep = const StepNavigation(step: WizardStep.goal)})
      : _signers = signers,
        _managers = managers;

  @override
  final int steps;
  @override
  final int progress;
  @override
  final TribeVisualType? type;
  @override
  final Color? background;
  @override
  final double? money;
  @override
  final Token? token;
  @override
  final String? name;
  @override
  final String? tokenName;
  @override
  final String? description;
  @override
  final DateTime? deadline;
  final Set<User> _signers;
  @override
  @JsonKey()
  Set<User> get signers {
    if (_signers is EqualUnmodifiableSetView) return _signers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_signers);
  }

  final Set<User> _managers;
  @override
  @JsonKey()
  Set<User> get managers {
    if (_managers is EqualUnmodifiableSetView) return _managers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_managers);
  }

  @override
  @JsonKey()
  final int managersTreshold;
  @override
  @JsonKey()
  final dynamic lastStep;
  @override
  @JsonKey()
  final WizardStep initialStep;
  @override
  @JsonKey()
  final StepNavigation currentStep;

  @override
  String toString() {
    return 'FundraisingState(steps: $steps, progress: $progress, type: $type, background: $background, money: $money, token: $token, name: $name, tokenName: $tokenName, description: $description, deadline: $deadline, signers: $signers, managers: $managers, managersTreshold: $managersTreshold, lastStep: $lastStep, initialStep: $initialStep, currentStep: $currentStep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FundraisingState &&
            (identical(other.steps, steps) || other.steps == steps) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.money, money) || other.money == money) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            const DeepCollectionEquality().equals(other._signers, _signers) &&
            const DeepCollectionEquality().equals(other._managers, _managers) &&
            (identical(other.managersTreshold, managersTreshold) ||
                other.managersTreshold == managersTreshold) &&
            const DeepCollectionEquality().equals(other.lastStep, lastStep) &&
            (identical(other.initialStep, initialStep) ||
                other.initialStep == initialStep) &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      steps,
      progress,
      type,
      background,
      money,
      token,
      name,
      tokenName,
      description,
      deadline,
      const DeepCollectionEquality().hash(_signers),
      const DeepCollectionEquality().hash(_managers),
      managersTreshold,
      const DeepCollectionEquality().hash(lastStep),
      initialStep,
      currentStep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FundraisingStateCopyWith<_$_FundraisingState> get copyWith =>
      __$$_FundraisingStateCopyWithImpl<_$_FundraisingState>(this, _$identity);
}

abstract class _FundraisingState implements FundraisingState {
  const factory _FundraisingState(
      {required final int steps,
      required final int progress,
      final TribeVisualType? type,
      final Color? background,
      final double? money,
      final Token? token,
      final String? name,
      final String? tokenName,
      final String? description,
      final DateTime? deadline,
      final Set<User> signers,
      final Set<User> managers,
      final int managersTreshold,
      final dynamic lastStep,
      final WizardStep initialStep,
      final StepNavigation currentStep}) = _$_FundraisingState;

  @override
  int get steps;
  @override
  int get progress;
  @override
  TribeVisualType? get type;
  @override
  Color? get background;
  @override
  double? get money;
  @override
  Token? get token;
  @override
  String? get name;
  @override
  String? get tokenName;
  @override
  String? get description;
  @override
  DateTime? get deadline;
  @override
  Set<User> get signers;
  @override
  Set<User> get managers;
  @override
  int get managersTreshold;
  @override
  dynamic get lastStep;
  @override
  WizardStep get initialStep;
  @override
  StepNavigation get currentStep;
  @override
  @JsonKey(ignore: true)
  _$$_FundraisingStateCopyWith<_$_FundraisingState> get copyWith =>
      throw _privateConstructorUsedError;
}
