import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token_type.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/preview_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/preview_state.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/visual/visual_contract.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_visual.dart';

class PreviewController extends StateNotifier<PreviewState> {
  PreviewController() : super(const PreviewState.empty());

  Future<void> init(PreviewParams params) async {
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
}
