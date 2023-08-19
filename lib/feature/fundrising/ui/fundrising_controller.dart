import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/fundrising_state.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/token_contract.dart';

class FundrisingController extends StateNotifier<FundrisingState> {
  FundrisingController() : super(const FundrisingState(steps: 0, progress: 0));

  double? _money;
  Token? _token;
  String? _name;
  String? _tokenName;
  DateTime? _deadline;
  DateTime? _description;
  List<User>? _signers;

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

  void setGoal(double money, Token token) {
    _money = money;
    _token = token;
  }

  void setName(String projectName) {
    _name = projectName;
  }

  void _navigateNext(WizardStep step) {
    switch(step) {
      
      case WizardStep.goal:
        state= state.copyWith(currentStep: StepNavigation(step: step), progress: 0);
        break;
      case WizardStep.name:
        state= state.copyWith(currentStep: StepNavigation(step: step), progress: 1);
        break;
      case WizardStep.token:
        state= state.copyWith(currentStep: StepNavigation(step: step, params: TokenParams(token: _token!, amount: _money!)), progress: 2);
        break;
      case WizardStep.deadline:
         state= state.copyWith(currentStep: StepNavigation(step: step), progress: 3);
        break;
      case WizardStep.rules:
         state= state.copyWith(currentStep: StepNavigation(step: step), progress: 4);
        break;
      case WizardStep.description:
         state= state.copyWith(currentStep: StepNavigation(step: step), progress: 5);
        break;
      case WizardStep.visual:
         state= state.copyWith(currentStep: StepNavigation(step: step), progress: 6);
        break;
      case WizardStep.reserve:
         state= state.copyWith(currentStep: StepNavigation(step: step), progress: 7);
        break;
      case WizardStep.management:
        state= state.copyWith(currentStep: StepNavigation(step: step), progress: 8);
        break;
    }
  }

  void setDeadline(DateTime dateTime) {}

  void setDescription(String description) {}

  void setSigners(Set<User> users) {}
}
