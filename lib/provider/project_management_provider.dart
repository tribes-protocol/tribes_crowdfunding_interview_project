import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/class/project_funding_info.dart';
import 'package:tribes_crowdfunding_interview_project/provider/fund_project_provider.dart';

class ProjectManagementProvider extends ChangeNotifier {
  bool isCompleted = true;
  final FundingManagementData _fundingManagementData = FundingManagementData(
      baseUser: User(
        name: 'Daemon Nguyen',
        token: "0x1bcb2bb4",
      ),
      signers: []);
  List<User> get signers => _fundingManagementData.signers;
  User get baseUser => _fundingManagementData.baseUser;
  int get signatureThreshold => _fundingManagementData.signatureThreshold;
  int get signatureThresholdLimit => _fundingManagementData.signers.length + 1;
  void increaseSignatureThresshold() {
    if (signatureThreshold < signatureThresholdLimit) {
      _fundingManagementData.signatureThreshold += 1;
      notifyListeners();
    }
  }

  void decreaseSignatureThresshold() {
    if (signatureThreshold > 1) {
      _fundingManagementData.signatureThreshold -= 1;
      notifyListeners();
    }
  }

  void addSigner(User user) {
    _fundingManagementData.signers.add(user);
    notifyListeners();
  }

  void removeSigner(User user) {
    _fundingManagementData.signers.remove(user);
    if (signatureThreshold > signatureThresholdLimit) {
      _fundingManagementData.signatureThreshold -= 1;
    }
    notifyListeners();
  }

  void submit(BuildContext context) {
    var provider = context.read<FundProjectProvider>();
    provider.setManagement(_fundingManagementData);
  }
}
