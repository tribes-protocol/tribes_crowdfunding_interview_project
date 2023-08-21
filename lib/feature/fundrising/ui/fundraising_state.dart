import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_visual.dart';

part 'fundraising_state.freezed.dart';

enum WizardStep {
  goal,
  name,
  token,
  deadline,
  rules,
  description,
  visual,
  reserve,
  management,
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
class FundraisingState with _$FundraisingState {
  const factory FundraisingState({
    required int steps,
    required int progress,
    TribeVisualType? type,
    Color? background,
    double? money,
    Token? token,
    String? name,
    String? tokenName,
    String? description,
    DateTime? deadline,
    @Default({}) Set<User> signers,
    @Default({}) Set<User> managers,
    @Default(1) int managersTreshold,
    @Default(false) lastStep,
    @Default(WizardStep.goal) WizardStep initialStep,
    @Default(StepNavigation(step: WizardStep.goal)) StepNavigation currentStep,
  }) = _FundraisingState;
}
