import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/data/provider/repository_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token_list/token_list_controller.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token_list/token_list_state.dart';

final tokenListControllerProvider =
    StateNotifierProvider.autoDispose<TokenListController, TokenListState>((ref) {
  final tokenRepository = ref.watch(tokenRepositoryProvider);

  return TokenListController(
    tokenRepository: tokenRepository,
  );
});
