import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token_type.dart';

abstract class TokenRepository {
  Future<Token> getToken(TokenType tokenType);
  Future<List<Token>> getTokens({bool force = false});
}
