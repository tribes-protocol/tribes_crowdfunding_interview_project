import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tribes_crowdfunding_interview_project/core/extension/future_extension.dart';
import 'package:tribes_crowdfunding_interview_project/domain/repository/token_repository.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/token_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token_list/token_list_state.dart';

class TokenListController extends StateNotifier<TokenListState> {
  TokenListController({
    required TokenRepository tokenRepository,
  })  : _tokenRepository = tokenRepository,
        super(const TokenListState());

  final TokenRepository _tokenRepository;
  final PublishSubject<String> _searchSubject = PublishSubject();
  StreamSubscription? _subscription;

  Future<void> init() async {
    _subscription = _searchSubject
        .debounce((_) => TimerStream(true, const Duration(milliseconds: 450)))
        .listen((query) {
      final tokens = state.tokens.valueOrNull;
      final filteredTokens =
          tokens?.where((token) => token.type.name.contains(query)).toList() ??
              [];
      state = state.copyWith(filteredTokens: filteredTokens);
    });

    await _tokenRepository.getTokens().toAsyncValue().then(
          (value) => state = state.copyWith(
            tokens: value,
            filteredTokens: value.valueOrNull ?? [],
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
