import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/deadline/deadline_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/deadline/deadline_state.dart';

class DeadlineController extends StateNotifier<DeadlineState> {
  DeadlineController() : super(const DeadlineState());

  final DateTime _now = DateTime.now();

  Future<void> init(DeadlineParams? params) async {
    if (params != null) {
      final now = DateTime.now();
      final days = params.deadline.difference(now).inDays + 1;

      state = state.copyWith(
        selected: days,
        customDeadline: state.deadlines.contains(days) ? null : days,
        deadline: params.deadline,
      );
    }
  }

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
