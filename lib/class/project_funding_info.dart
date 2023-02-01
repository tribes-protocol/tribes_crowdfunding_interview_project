import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/enum/overfunding_rules.dart';
import 'package:tribes_crowdfunding_interview_project/enum/underfunding_rules.dart';

class ProjectFundingData {
  FundingGoal? fundingGoal;
  String? projectName;
  String? tokenName;
  DateTime? deadLine;
  ProjectFundingRules? projectFundingRules;
  String? description;
  ProjectReserveData? projectReserveData;
  FundingManagementData? fundingManagementInfo;
  ProjectVisualData? projectVisualData;
}

class ProjectFundingRules {
  OverFundingRules? overFundingRules;
  UnderFundingRules? underFundingRules;
  ProjectFundingRules({this.overFundingRules, this.underFundingRules});
}

class ProjectReserveData {
  List<ReserveData>? userReserverInfo;
  ProjectReserveData({this.userReserverInfo});
}

enum Deadlines { sevenDays, fourteenDays, twentyEightDays, custom }

extension ParseToString on Deadlines {
  String toShortString() {
    switch (this) {
      case Deadlines.sevenDays:
        return '7 days';
      case Deadlines.fourteenDays:
        return '14 days';
      case Deadlines.twentyEightDays:
        return '28 days';
      default:
        return '';
    }
  }
}

class ReserveData {
  User? user;
  double? amount;
  ReserveData({this.user, this.amount});
  @override
  bool operator ==(Object other) {
    return other is ReserveData && user == other.user;
  }
}

class User {
  String? name;
  String? token;
  String? imagePath;
  @override
  bool operator ==(Object other) {
    return other is User && name == other.name && token == other.token;
  }

  User({
    this.name,
    this.token,
  });
}

class FundingGoal {
  double? amountInUSD;
  double? amountInCrypto;
  FundingGoal({this.amountInUSD, this.amountInCrypto});
}

enum ProjectVisualType { isImage, isEmoji }

class ProjectVisualData {
  ProjectVisualType? projectVisualType;
  EmojiVisual? emojiVisual;
  ImageVisual? imageVisual;
  ProjectVisualData(
      {this.projectVisualType, this.emojiVisual, this.imageVisual});
}

class EmojiVisual {
  Color? color;
  Emoji? emoji;
  EmojiVisual({this.color, this.emoji});
}

class ImageVisual {
  String? path;
  ImagePathSourceType? sourceType;
  ImageVisual({this.path, this.sourceType});
}

enum ImagePathSourceType { fromLocal, fromInternet }

class FundingManagementData {
  int signatureThreshold;
  User baseUser;
  List<User> signers;
  FundingManagementData(
      {this.signatureThreshold = 1,
      this.signers = const [],
      required this.baseUser});
}
