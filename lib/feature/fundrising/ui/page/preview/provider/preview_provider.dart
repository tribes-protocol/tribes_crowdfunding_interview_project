
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/preview_controller.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/preview_state.dart';

final previewControllerProvider = StateNotifierProvider.autoDispose<PreviewController, PreviewState>((ref) {
  return PreviewController();
});
