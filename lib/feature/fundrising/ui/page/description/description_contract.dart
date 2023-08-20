class DescriptionContract {
  static const String path = '/description';
  static const String name = 'description';
}

class DescriptionParams {
  const DescriptionParams({required this.description});

  final String description;
}

class DescriptionResult{
  const DescriptionResult({required this.description});

  final String description;
}
