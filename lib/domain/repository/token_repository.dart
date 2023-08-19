import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token_type.dart';

/// Token related repository
abstract class TokenRepository {
  /// Get token by [TokenType]
  Future<Token> getToken(TokenType tokenType);

  /// Get all available tokens
  /// 
  /// [force] - invalidate cache and reload
  Future<List<Token>> getTokens({bool force = false});
}
