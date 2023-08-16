import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';

part 'goal_state.freezed.dart';

@freezed
class GoalState with _$GoalState {
  const factory GoalState({
    @Default(AsyncLoading()) AsyncValue<Token> token,
    @Default(0) double money,
    @Default(0) double crypto,
    @Default(true) bool moneyEditing,
  }) = _GoalState;
}
