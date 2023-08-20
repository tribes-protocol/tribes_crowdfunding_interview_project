import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';

class ManagementContract {
  static const String path = '/management';
  static const String name = 'management';
}

class ManagementParams {
  const ManagementParams({
    required this.managers,
    required this.managersTreshold,
  });
  final Set<User> managers;
  final int managersTreshold;
}

class ManagementResult {
  const ManagementResult({
    required this.managers,
    required this.managersTreshold,
  });
  final Set<User> managers;
  final int managersTreshold;
}
