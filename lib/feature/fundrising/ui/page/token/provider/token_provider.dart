
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/token_controller.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/token_state.dart';

final tokenControllerProvider = StateNotifierProvider.autoDispose<TokenController, TokenState>((ref) {
  return TokenController();
});
