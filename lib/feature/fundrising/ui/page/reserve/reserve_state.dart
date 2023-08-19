import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';

part 'reserve_state.freezed.dart';

@freezed
class ReserveState with _$ReserveState {
  const factory ReserveState({
    @Default(5) double portion,
    @Default({}) Set<User> users,
  }) = _ReserveState;

  const ReserveState._();

  double get procentage => users.length * portion;
}
