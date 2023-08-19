
import 'package:freezed_annotation/freezed_annotation.dart';

part 'description_state.freezed.dart';

@freezed
class DescriptionState with _$DescriptionState {
  const factory DescriptionState({
    @Default('') String description,
  }) =_DescriptionState;

  bool get ready => description.isNotEmpty;

  const DescriptionState._();
}