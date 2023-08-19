import 'dart:ui';

import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_visual.dart';

class PreviewContract {
  static const String path = '/preview';
  static const String name = 'preview';
}

class PreviewParams {
  PreviewParams({
    required this.type,
    required this.background,
    required this.money,
    required this.token,
    required this.name,
    required this.tokenName,
    required this.description,
    required this.deadline,
    required this.signers,
    required this.managers,
    required this.managersTreshold,
  });

  final TribeVisualType type;
  final Color background;
  final double money;
  final Token token;
  final String name;
  final String tokenName;
  final String description;
  final DateTime deadline;
  final Set<User> signers;
  final Set<User> managers;
  final int managersTreshold;
}
