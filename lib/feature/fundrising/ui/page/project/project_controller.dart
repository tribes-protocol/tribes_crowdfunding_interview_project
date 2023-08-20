import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/project_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/project_state.dart';

class ProjectController extends StateNotifier<ProjectState> {
  ProjectController() : super(const ProjectState());

  Future<void> init(ProjectParams? params) async {
    if(params != null) {
      state = state.copyWith(projectName: params.name);
    }
  }

  void onNameChanged(String name) {
    state = state.copyWith(projectName: name);
  }
}
