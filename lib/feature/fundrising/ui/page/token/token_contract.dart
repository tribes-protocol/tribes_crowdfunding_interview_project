class TokenContract {
  static const String path = '/token';
  static const String name = 'token';
}

class TokenParams {
  final String token;
  final double amount;

  const TokenParams({
    required this.token,
    required this.amount,
  });
}
