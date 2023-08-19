
import 'package:freezed_annotation/freezed_annotation.dart';

part 'preview_state.freezed.dart';

enum Steps {
  goal, name, deadline, rules, description,
}

@freezed
class PreviewState with _$PreviewState {
  const factory PreviewState() =_PreviewState;
}