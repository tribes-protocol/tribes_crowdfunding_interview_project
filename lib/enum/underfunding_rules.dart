enum UnderFundingRules { returnFunds, holdFunds }

extension ParseToString on UnderFundingRules {
  String toShortString() {
    switch (this) {
      case UnderFundingRules.holdFunds:
        return 'Hold funds';
      case UnderFundingRules.returnFunds:
        return 'Return funds';
      default:
        return '';
    }
  }
}
