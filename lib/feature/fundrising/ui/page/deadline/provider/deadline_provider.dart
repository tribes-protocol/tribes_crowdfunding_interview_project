import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/deadline/deadline_controller.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/deadline/deadline_state.dart';

final deadlineControllerProvider =
    StateNotifierProvider.autoDispose<DeadlineController, DeadlineState>((ref) {
  return DeadlineController();
});
