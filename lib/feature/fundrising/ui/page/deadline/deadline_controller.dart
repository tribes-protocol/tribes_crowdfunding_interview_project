import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/deadline/deadline_state.dart';

class DeadlineController extends StateNotifier<DeadlineState> {
  DeadlineController() : super(const DeadlineState());

  Future<void> init() async {}

  void onDeadlineSected(int days) {
    state = state.copyWith(deadline: days);
  }
}