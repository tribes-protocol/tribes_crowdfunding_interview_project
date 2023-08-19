import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/visual/visual_controller.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/visual/visual_state.dart';

final visualControllerProvider =
    StateNotifierProvider.autoDispose<VisualController, VisualState>((ref) {
  return VisualController();
});
