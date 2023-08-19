import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/fundrising_controller.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/fundrising_state.dart';

final fundrisingControllerProvider =
    StateNotifierProvider.autoDispose<FundrisingController, FundrisingState>(
        (ref) {
  return FundrisingController();
});
