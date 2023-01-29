class ProjectFundingData {
  FundingGoal? fundingGoal;
  String? projectName;
  String? tokenName;
  DateTime? deadLine;
  ProjectFundingRules? projectFundingRules;
  String? description;
  ProjectReserveData? projectReserveData;
  ProjectFundingManagementData? projectFundingManagementInfo;
  ProjectVisualData? projectVisualData;
}

enum OverFundingRules { allowOverfundingUntilDeadline, stopAtTheGoal }

enum UnderFundingRules { returnFunds, holdFunds }

class ProjectFundingRules {
  OverFundingRules? overFundingRules;
  UnderFundingRules? underFundingRules;
}

class ProjectReserveData {
  List<ReserverData>? userReserverInfo;
}

class ReserverData {
  User? user;
  double? amount;
}

class User {
  String? name;
  String? token;
}

class FundingGoal {
  double? amountInUSD;
  double? amountInCrypto;
  FundingGoal({this.amountInUSD, this.amountInCrypto});
}

enum ProjectVisualType { isImage, isEmoji }

class ProjectVisualData {
  ProjectVisualType? projectVisualType;
}

class ProjectFundingManagementData {
  int? signatureThreshold;
  List<User>? signers;
}
