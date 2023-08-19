import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_state.freezed.dart';

@freezed
class ProjectState with _$ProjectState {
  const factory ProjectState({
    @Default('') String projectName,
  }) = _ProjectState;

  bool get ready => projectName.replaceAll(' ', '').isNotEmpty;

  const ProjectState._();
}
