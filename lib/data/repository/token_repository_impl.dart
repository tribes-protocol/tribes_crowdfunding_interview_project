import 'dart:math';

import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token_type.dart';
import 'package:tribes_crowdfunding_interview_project/domain/repository/token_repository.dart';

class TokenRepositoryImpl implements TokenRepository {
  final List<Token> _tokens = [];

  @override
  Future<List<Token>> getTokens({
    bool force = false,
  }) async {
    if (force || _tokens.isEmpty) {
      // Simulate API request
      await Future.delayed(const Duration(milliseconds: 1000));

      final random = Random();

      final result = List.generate(
        TokenType.values.length,
        (index) => Token(
          ratio: random.nextDouble() * 3,
          type: TokenType.values[index],
        ),
      );

      _tokens.clear();
      _tokens.addAll(result);
    }

    return _tokens;
  }

  @override
  Future<Token> getToken(TokenType tokenType) async {
    if (_tokens.isEmpty) {
      await getTokens();
    }

    return _tokens.firstWhere((token) => token.type == tokenType);
  }
}
