
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/reserve/reserve_controller.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/reserve/reserve_state.dart';

final reserveControllerProvider = StateNotifierProvider.autoDispose<ReserveController, ReserveState>((ref) {
  return ReserveController();
});
