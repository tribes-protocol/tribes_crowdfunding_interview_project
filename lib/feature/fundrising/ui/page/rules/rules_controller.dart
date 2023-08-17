import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/rules/rules_state.dart';

class RulesController extends StateNotifier<RulesState> {
  RulesController() : super(const RulesState());

  Future<void> init() async {}

  void setOverfunding(Overfunding overfunding) {
    state = state.copyWith(overfunding: overfunding);
  }

  void setUnderfunding(Underfunding underfunding) {
    state = state.copyWith(underfunding: underfunding);
  }
}
