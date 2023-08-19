import 'package:freezed_annotation/freezed_annotation.dart';

part 'fundrising_state.freezed.dart';

enum WizardStep {
  goal,
  name,
  token,
  deadline,
  rules,
  description,
  visual,
  reserve,
  review,
}

class StepNavigation {
  const StepNavigation({
    required this.step,
    this.params,
  });

  final WizardStep step;
  final Object? params;
}

@freezed
class FundrisingState with _$FundrisingState {
  const factory FundrisingState({
    @Default(WizardStep.goal) WizardStep initialStep,
    @Default(StepNavigation(step: WizardStep.goal)) StepNavigation currentStep,
  }) = _FundrisingState;
}
