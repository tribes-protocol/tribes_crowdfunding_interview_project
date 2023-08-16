import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/project_state.dart';

class ProjectController extends StateNotifier<ProjectState> {
  ProjectController() : super(const ProjectState());

  Future<void> init() async {}

  void onNameChanged(String name) {
    state = state.copyWith(projectName: name);
  }
}
