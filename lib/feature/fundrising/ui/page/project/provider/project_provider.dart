
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/project_controller.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/project_state.dart';

final projectControllerProvider = StateNotifierProvider.autoDispose<ProjectController, ProjectState>((ref) {
  return ProjectController();
});
