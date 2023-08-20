import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';

part 'user_list_state.freezed.dart';

@freezed
class UserListState with _$UserListState {
  const factory UserListState({
    @Default(AsyncLoading()) AsyncValue<List<User>> users,
    @Default([]) List<User> filteredUsers,
  }) = _UserListState;
}
