
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';

part 'management_state.freezed.dart';

@freezed
class ManagementState with _$ManagementState {
  const factory ManagementState({
    @Default(1) int treshold,
    @Default({}) Set<User> users,
  }) =_ManagementState;
}