import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token_type.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/management/management_state.dart';

class ManagementController extends StateNotifier<ManagementState> {
  ManagementController() : super(const ManagementState());

  Future<void> init() async {
  }

  void addUser(User user) {
    final users = state.users.toSet();
    users.add(user);
    state = state.copyWith(users: users);
  }

  void removeUser(User user) {
    final users = state.users.toSet();
    users.remove(user);
    state = state.copyWith(users: users);
  }

  void setTreshold(int value) {
    state = state.copyWith(treshold: value);
  }
}
