enum OverFundingRules { allowOverfundingUntilDeadline, stopAtTheGoal }

extension ParseToString on OverFundingRules {
  String toShortString() {
    switch (this) {
      case OverFundingRules.allowOverfundingUntilDeadline:
        return 'Allow overfunding until the deadline';
      case OverFundingRules.stopAtTheGoal:
        return 'Stop at the goal';
      default:
        return '';
    }
  }
}
