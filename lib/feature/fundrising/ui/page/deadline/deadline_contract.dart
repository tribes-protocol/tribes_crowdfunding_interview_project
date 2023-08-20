class DeadlineContract {
  static const String path = '/deadline';
  static const String name = 'deadline';
}

class DeadlineParams {
  const DeadlineParams({required this.deadline});

  final DateTime deadline;
}

class DeadlineResult{
  const DeadlineResult({required this.deadline});
  
  final DateTime deadline;
}
