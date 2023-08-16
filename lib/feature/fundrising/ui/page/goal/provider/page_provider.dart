import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/data/provider/repository_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/goal/goal_controller.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/goal/goal_state.dart';

final goalControllerProvider = StateNotifierProvider.autoDispose<GoalController, GoalState>((ref) {
  final tokenListRepository = ref.watch(tokenRepositoryProvider);

  return GoalController(
    tokenRepository: tokenListRepository,
  );
});
