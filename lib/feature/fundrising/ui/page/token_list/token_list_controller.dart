import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/core/extension/future_extension.dart';
import 'package:tribes_crowdfunding_interview_project/domain/repository/token_repository.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token_list/token_list_state.dart';

class TokenListController extends StateNotifier<TokenListState> {
  TokenListController({
    required TokenRepository tokenRepository,
  })  : _tokenRepository = tokenRepository,
        super(const TokenListState());

  final TokenRepository _tokenRepository;

  Future<void> init() async {
    await _tokenRepository.getTokens().toAsyncValue().then(
          (value) => state = state.copyWith(tokens: value),
        );
  }
}
