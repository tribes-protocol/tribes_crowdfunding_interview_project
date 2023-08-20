import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';

class GoalContract {
  static const String path = '/goal';
  static const String name = 'goal';
}

class GoalParams {
  GoalParams({
    required this.token,
    required this.money,
    required this.crypto,
  });

  final Token token;
  final double money;
  final double crypto;
}

class GoalResult {
  GoalResult({
    required this.token,
    required this.money,
    required this.crypto,
  });

  final Token token;
  final double money;
  final double crypto;
}
