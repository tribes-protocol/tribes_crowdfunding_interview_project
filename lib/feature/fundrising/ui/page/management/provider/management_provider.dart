
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/management/management_controller.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/management/management_state.dart';

final managementControllerProvider = StateNotifierProvider.autoDispose<ManagementController, ManagementState>((ref) {
  return ManagementController();
});
