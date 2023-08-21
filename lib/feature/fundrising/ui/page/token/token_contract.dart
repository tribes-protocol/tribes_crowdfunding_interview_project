import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';

class TokenContract {
  static const String path = '/token';
  static const String name = 'token';
}

class TokenParams {
  final String? name;
  final Token token;
  final double amount;
  final bool standalone;

  const TokenParams({
    this.name,
    required this.token,
    required this.amount,
    required this.standalone,
  });
}

class TokenResult {
  final String name;

  const TokenResult({
    required this.name,
  });
}
