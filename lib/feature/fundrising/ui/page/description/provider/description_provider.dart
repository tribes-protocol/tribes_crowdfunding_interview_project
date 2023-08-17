
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/description/description_controller.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/description/description_state.dart';

final descriptionControllerProvider = StateNotifierProvider.autoDispose<DescriptionController, DescriptionState>((ref) {
  return DescriptionController();
});
