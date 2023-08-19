
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rules_state.freezed.dart';

enum Overfunding {
  allow, stop
}

enum Underfunding {
  returns, hold
}

@freezed
class RulesState with _$RulesState {
  const factory RulesState({
    Overfunding? overfunding,
    Underfunding? underfunding,
  }) =_RulesState;

  bool get ready => overfunding != null && underfunding != null;

  const RulesState._();
}