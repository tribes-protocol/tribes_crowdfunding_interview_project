import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/deadline/deadline_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/description/description_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/goal/goal_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/management/management_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/preview_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/preview_state.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/project_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/token_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/visual/visual_contract.dart';

class PreviewController extends StateNotifier<PreviewState> {
  PreviewController() : super(const PreviewState.empty());

  Future<void> init(PreviewParams params) async {
    await Future.delayed(const Duration(milliseconds: 400));
    state = PreviewState(
      type: params.type,
      background: params.background,
      money: params.money,
      token: params.token,
      name: params.name,
      tokenName: params.tokenName,
      description: params.description,
      deadline: params.deadline,
      signers: params.signers,
      managers: params.managers,
      managersTreshold: params.managersTreshold,
    );
  }

  void updateVisual(VisualResult result) {
    state = state.required.copyWith(
      type: result.type,
      background: result.background,
    );
  }

  void updateGoal(GoalResult result) {
    state = state.required.copyWith(
      token: result.token,
      money: result.money,
    );
  }

  void updateName(ProjectResult result) {
    state = state.required.copyWith(
      name: result.name,
    );
  }

  void updateTokenName(TokenResult result) {
    state = state.required.copyWith(
      tokenName: result.name,
    );
  }

  void updateDescription(DescriptionResult result) {
    state = state.required.copyWith(
      description: result.description,
    );
  }

  void updateDeadline(DeadlineResult result) {
    state = state.required.copyWith(
      deadline: result.deadline,
    );
  }

  void updateManagers(ManagementResult result) {
    state = state.required.copyWith(
      managers: result.managers,
      managersTreshold: result.managersTreshold,
    );
  }
}
