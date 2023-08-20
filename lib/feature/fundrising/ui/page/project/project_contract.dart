class ProjectContract {
  static const String path = '/name';
  static const String name = 'name';
}

class ProjectParams {
  const ProjectParams({required this.name});

  final String name;
}

class ProjectResult {
  const ProjectResult({required this.name});

  final String name;
}
