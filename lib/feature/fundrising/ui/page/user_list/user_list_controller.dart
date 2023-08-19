import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tribes_crowdfunding_interview_project/core/extension/future_extension.dart';
import 'package:tribes_crowdfunding_interview_project/domain/repository/user_repository.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/user_list/user_list_state.dart';

class UserListController extends StateNotifier<UserListState> {
  UserListController({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const UserListState());

  final UserRepository _userRepository;
  final PublishSubject<String> _searchSubject = PublishSubject();
  StreamSubscription? _subscription;

  Future<void> init() async {
    _subscription = _searchSubject
        .debounce((_) => TimerStream(true, const Duration(milliseconds: 450)))
        .listen((query) {
      final tokens = state.users.valueOrNull;
      final filteredUsers =
          tokens?.where((user) => user.name.toLowerCase().contains(query.toLowerCase())).toList() ??
              [];
      state = state.copyWith(filteredUsers: filteredUsers);
    });

    await _userRepository.getUsers().toAsyncValue().then(
          (value) => state = state.copyWith(
            users: value,
            filteredUsers: value.valueOrNull ?? [],
          ),
        );
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  void search(String query) {
    _searchSubject.add(query);
  }
}
