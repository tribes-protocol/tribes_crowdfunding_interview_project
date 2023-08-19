
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deadline_state.freezed.dart';

@freezed
class DeadlineState with _$DeadlineState {
  const factory DeadlineState({
    @Default([7, 14, 28]) List<int> deadlines,
    int? customDeadline,
    int? selected,
    DateTime? deadline,
  }) =_DeadlineState;

  bool get ready => deadline != null;

  const DeadlineState._();
}