import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/class/project_funding_info.dart';
import 'package:tribes_crowdfunding_interview_project/provider/fund_project_provider.dart';

class FundingGoalProvider extends ChangeNotifier {
  bool isCompleted = false;
  TextEditingController amountInUSDController = TextEditingController();
  TextEditingController amountInCryptoController = TextEditingController();
  double? _amountInUSD, _amountInCrypto;
  void onAmountInUSDChanged(String value) {
    var amount = double.tryParse(value);
    if (amount != null) {
      _amountInUSD = amount;
      _amountInCrypto = amount / 1320;
      isCompleted = true;
      amountInCryptoController.text = _amountInCrypto!.toStringAsFixed(3);
      notifyListeners();
    }
  }

  void onAmountInCryptoChanged(String value) {
    var amount = double.tryParse(value);
    if (amount != null) {
      _amountInCrypto = amount;
      _amountInUSD = amount * 1320;
      isCompleted = true;
      amountInUSDController.text = _amountInUSD!.toStringAsFixed(2);
      notifyListeners();
    }
  }

  void submit(BuildContext context) {
    var provider = context.read<FundProjectProvider>();
    provider.setFundingGoal(FundingGoal(
        amountInUSD: _amountInUSD, amountInCrypto: _amountInCrypto));
  }
}
