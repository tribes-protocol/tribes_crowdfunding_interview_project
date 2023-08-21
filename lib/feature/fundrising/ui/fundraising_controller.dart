import 'dart:math';
import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/fundraising_state.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/rules/rules_state.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/token_contract.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_visual.dart';

class FundraisingController extends StateNotifier<FundraisingState> {
  FundraisingController() : super(const FundraisingState(steps: 0, progress: 0));

  final List<WizardStep> _flow = [
    WizardStep.goal,
    WizardStep.name,
    WizardStep.token,
    WizardStep.deadline,
    WizardStep.rules,
    WizardStep.description,
    WizardStep.visual,
    WizardStep.reserve,
    WizardStep.management,
  ];

  Future<void> init() async {
    state = state.copyWith(steps: _flow.length);
  }

  void next() {
    final currentIndex = _flow.indexOf(state.currentStep.step);
    final nextIndex = min(currentIndex + 1, _flow.length - 1);
    _navigateNext(_flow[nextIndex]);
  }

  void goBack() {
     final currentIndex = _flow.indexOf(state.currentStep.step);
    final nextIndex = max(currentIndex - 1, 0);
    _navigateNext(_flow[nextIndex]);
  }

  void setGoal(double money, Token token) {
    state = state.copyWith(
      money: money,
      token: token,
    );
  }

  void setName(String projectName) {
    state = state.copyWith(
      name: projectName,
    );
  }

  void setTokenName(String tokenName) {
    state = state.copyWith(
      tokenName: tokenName,
    );
  }

  void setDescription(String description) {
    state = state.copyWith(
      description: description,
    );
  }

  void setVisual(TribeVisualType type, Color background) {
    state = state.copyWith(
      type: type,
      background: background,
    );
  }

  void setDeadline(DateTime deadline) {
    state = state.copyWith(
      deadline: deadline,
    );
  }

  void setSigners(Set<User> signers) {
    state = state.copyWith(
      signers: signers,
    );
  }

  void setMangement(Set<User> managers, int treshold) {
    state = state.copyWith(
      managers: managers,
      managersTreshold: treshold,
    );
  }

  void _navigateNext(WizardStep step) {
    switch (step) {
      case WizardStep.goal:
        state = state.copyWith(
            currentStep: StepNavigation(step: step), progress: 0, lastStep: false);
        break;
      case WizardStep.name:
        state = state.copyWith(
            currentStep: StepNavigation(step: step), progress: 1, lastStep: false);
        break;
      case WizardStep.token:
        state = state.copyWith(
            currentStep: StepNavigation(
                step: step,
                params: TokenParams(name: state.name, token: state.token!, amount: state.money!, standalone: false)),
            progress: 2, lastStep: false);
        break;
      case WizardStep.deadline:
        state = state.copyWith(
            currentStep: StepNavigation(step: step), progress: 3, lastStep: false);
        break;
      case WizardStep.rules:
        state = state.copyWith(
            currentStep: StepNavigation(step: step), progress: 4, lastStep: false);
        break;
      case WizardStep.description:
        state = state.copyWith(
            currentStep: StepNavigation(step: step), progress: 5, lastStep: false);
        break;
      case WizardStep.visual:
        state = state.copyWith(
            currentStep: StepNavigation(step: step), progress: 6, lastStep: false);
        break;
      case WizardStep.reserve:
        state = state.copyWith(
            currentStep: StepNavigation(step: step), progress: 7, lastStep: false);
        break;
      case WizardStep.management:
        state = state.copyWith(
            currentStep: StepNavigation(step: step), progress: 8, lastStep: true);
        break;
    }
  }

  void setRules(Overfunding? overfunding, Underfunding? underfunding) {}
}
