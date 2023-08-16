import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/domain/repository/token_repository.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/goal/goal_state.dart';

class IntroController extends StateNotifier<GoalState> {
  IntroController({
    required TokenRepository tokenRepository,
  })  : _tokenRepository = tokenRepository,
        super(const GoalState());

  final TokenRepository _tokenRepository;

  Future<void> init() async {
    // prefetch inital data for te app
    unawaited(_tokenRepository.getTokens());
  }
}
