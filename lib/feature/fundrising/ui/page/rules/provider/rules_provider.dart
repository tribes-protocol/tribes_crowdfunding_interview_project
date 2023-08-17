
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/rules/rules_controller.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/rules/rules_state.dart';

final rulesControllerProvider = StateNotifierProvider.autoDispose<RulesController, RulesState>((ref) {
  return RulesController();
});
