import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/token_state.dart';

class TokenController extends StateNotifier<TokenState> {
  TokenController() : super(const TokenState());

  bool _nameChanged = false;

  Future<void> init() async {}

  void onNameChanged(String name) {
    if (!_nameChanged && name.isNotEmpty) {
      _nameChanged = true;
    }
    state = state.copyWith(
      tokenName: name,
      error: _nameChanged && name.isEmpty ? 'Name can`be empty' : null,
    );
  }
}
