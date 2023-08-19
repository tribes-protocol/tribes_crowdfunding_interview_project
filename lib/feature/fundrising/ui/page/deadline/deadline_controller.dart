import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/deadline/deadline_state.dart';

class DeadlineController extends StateNotifier<DeadlineState> {
  DeadlineController() : super(const DeadlineState());

  DateTime _now = DateTime.now();

  Future<void> init() async {}

  void onDeadlineSected(int days) {
    state = state.copyWith(
        selected: days,
        deadline: _now.add(
          Duration(days: days),
        ));
  }

  void setCustomDeadline(int? deadline) {
    var newState = state.copyWith(
      selected: deadline,
      customDeadline: deadline,
    );

    if (deadline != null) {
      newState =
          newState.copyWith(deadline: _now.add(Duration(days: deadline)));
    }

    state = newState;
  }
}
