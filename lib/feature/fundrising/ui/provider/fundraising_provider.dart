import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/fundraising_controller.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/fundraising_state.dart';

final fundraisingControllerProvider =
    StateNotifierProvider.autoDispose<FundraisingController, FundraisingState>(
        (ref) {
  return FundraisingController();
});
