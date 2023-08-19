import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/reserve/reserve_state.dart';

class ReserveController extends StateNotifier<ReserveState> {
  ReserveController(): super(const ReserveState());

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
  
}