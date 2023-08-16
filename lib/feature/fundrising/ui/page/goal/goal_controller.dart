import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/core/extension/future_extension.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token_type.dart';
import 'package:tribes_crowdfunding_interview_project/domain/repository/token_repository.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/goal/goal_state.dart';

class GoalController extends StateNotifier<GoalState> {
  GoalController({
    required TokenRepository tokenRepository,
  })  : _tokenRepository = tokenRepository,
        super(const GoalState());

  final TokenRepository _tokenRepository;

  Future<void> init() {
    return _tokenRepository.getToken(TokenType.eth).toAsyncValue().then(
          (value) => state = state.copyWith(token: value),
        );
  }

  void onTokenChanged(Token token) {
    var newState = state.copyWith(token: AsyncValue.data(token));
    if (!state.moneyEditing) {
      newState = newState.copyWith(crypto: _calculateCrypto(state.money, token.ratio));
    } else {
      newState = newState.copyWith(money: _calculateMoney(state.crypto, token.ratio));
    }

    state = newState;
  }

  void onMoneyChange(double? money) {
    if (!state.moneyEditing) {
      return;
    }

    if (money == null) {
      state = state.copyWith(
        money: 0,
        crypto: 0,
      );
      return;
    }

    if (money < 0.01) {
      state = state.copyWith(money: 0, crypto: 0);
    }
    final newState = state.copyWith(money: state.money);
    final ratio = state.token.valueOrNull?.ratio;

    if (ratio != null) {
      state = newState.copyWith(money: money, crypto: _calculateCrypto(money, ratio));
    } else {
      state = newState;
    }
  }

  void onCryptoChange(double? crypto) {
    if (state.moneyEditing) {
      return;
    }
    if (state.crypto == crypto) {
      return;
    }
    if (crypto == null) {
      state = state.copyWith(
        crypto: 0,
        money: 0,
      );
      return;
    }
    if (crypto < 0.01) {
      state = state.copyWith(money: 0, crypto: 0);
    }
    final newState = state.copyWith(crypto: state.crypto);
    final ratio = state.token.valueOrNull?.ratio;

    if (ratio != null) {
      state = newState.copyWith(crypto: crypto, money: _calculateMoney(crypto, ratio));
    } else {
      state = newState;
    }
  }

  void onMoneySelected(bool selected) {
    state = state.copyWith(moneyEditing: selected);
  }

  double _calculateCrypto(
    double money,
    double ratio,
  ) {
    if (money < 0.01) {
      return 0;
    }

    print('Calculate crypto: $ratio');

    return money * ratio;
  }

  double _calculateMoney(
    double crypto,
    double ratio,
  ) {
    if (crypto < 0.01) {
      return 0;
    }

    print('Calculate money: $ratio');

    return crypto / ratio;
  }
}
