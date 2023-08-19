import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token_type.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/preview_state.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_visual.dart';

class PreviewController extends StateNotifier<PreviewState> {
  PreviewController()
      : super(PreviewState(
          type: TribeVisualType.emoji(emoji: '😀'),
          background: Colors.red,
          money: 3000,
          token: Token(ratio: 2, type: TokenType.bnb),
          name: 'name',
          tokenName: 'tokenName',
          description: 'description',
          deadline: DateTime(2024),
          signers: [
            User(
                name: 'name',
                avatarUrl: 'avatarUrl',
                tokenType: TokenType.bnb,
                wallet: 'wallet')
          ],
        ));

  Future<void> init() async {}
}
