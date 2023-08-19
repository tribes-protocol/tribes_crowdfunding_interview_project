import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/fundrising_state.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/token_contract.dart';

class FundrisingController extends StateNotifier<FundrisingState> {
  FundrisingController() : super(const FundrisingState());

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
  ];

  Future<void> init() async {}

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
        state= state.copyWith(currentStep: StepNavigation(step: step));
        break;
      case WizardStep.name:
        state= state.copyWith(currentStep: StepNavigation(step: step));
        break;
      case WizardStep.token:
        state= state.copyWith(currentStep: StepNavigation(step: step, params: TokenParams(token: _token!, amount: _money!)));
        break;
      case WizardStep.deadline:
         state= state.copyWith(currentStep: StepNavigation(step: step));
        break;
      case WizardStep.rules:
         state= state.copyWith(currentStep: StepNavigation(step: step));
        break;
      case WizardStep.description:
         state= state.copyWith(currentStep: StepNavigation(step: step));
        break;
      case WizardStep.visual:
         state= state.copyWith(currentStep: StepNavigation(step: step));
        break;
      case WizardStep.reserve:
         state= state.copyWith(currentStep: StepNavigation(step: step));
        break;
      case WizardStep.review:
        // TODO: Handle this case.
        break;
    }
  }

  void setDeadline(DateTime dateTime) {}

  void setDescription(String description) {}

  void setSigners(Set<User> users) {}
}
