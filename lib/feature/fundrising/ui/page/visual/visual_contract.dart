import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_visual.dart';

class VisualContract {
  static const String path = '/visual';
  static const String name = 'visual';
}

class VisualParams {
  const VisualParams({
    required this.type,
    required this.background,
  });

  final TribeVisualType type;
  final Color background;
}

class VisualResult {
  const VisualResult({
    required this.type,
    required this.background,
  });

  final TribeVisualType type;
  final Color background;
}
