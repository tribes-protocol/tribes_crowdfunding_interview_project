import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/data/provider/repository_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/user_list/user_list_controller.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/user_list/user_list_state.dart';

final userListControllerProvider =
    StateNotifierProvider.autoDispose<UserListController, UserListState>((ref) {
  final userRepository = ref.watch(userRepositoryProvider);

  return UserListController(
    userRepository: userRepository,
  );
});
