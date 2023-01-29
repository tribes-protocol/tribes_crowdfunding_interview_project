class ProjectFundingInfo {
  FundingGoal? fundingGoal;
  String? projectName;
  String? tokenName;
  DateTime? deadLine;
  String? description;
  ProjectVisualInfo? projectVisualInfo;
}

class ProjectFundingRules {
  OverFundingRules? overFundingRules;
}

class ReserveInfo {
  List<UserReserverInfo>? userReserverInfo;
}

class UserReserverInfo {
  User? user;
  double? amount;
}

class User {
  String? name;
  String? token;
}

enum OverFundingRules { allowOverfundingUntilDeadline, stopAtTheGoal }

enum UnderFundingRules { returnFunds, holdFunds }

class FundingGoal {
  double? amountInUSD;
  double? amountInCrypto;
  FundingGoal({this.amountInUSD, this.amountInCrypto});
}

enum ProjectVisualType { isImage, isEmoji }

class ProjectVisualInfo {
  ProjectVisualType? projectVisualType;
}

class ProjectFundingManagementInfo {
  int? signatureThreshold;
  List<User>? signers;
}
