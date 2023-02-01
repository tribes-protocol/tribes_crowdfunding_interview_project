import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/class/project_funding_info.dart';
import 'package:tribes_crowdfunding_interview_project/provider/fund_project_provider.dart';

class ProjectReserveProvider extends ChangeNotifier {
  List<ReserveData> listReserveData = [];
  double? get issuedToFunder =>
      100 -
      listReserveData.fold(
          0, (previousValue, element) => previousValue + element.amount!);
  void addReserveUser(User user) {
    if (!listReserveData.contains(ReserveData(user: user))) {
      listReserveData.add(ReserveData(user: user, amount: 0));
    }
  }

  void changeAmount(int index, double amount) {
    listReserveData[index].amount = amount;
    notifyListeners();
  }

  void removeReserveUser(ReserveData data) {
    listReserveData.remove(data);
    notifyListeners();
  }

  void submit(BuildContext context) {
    var provider = context.read<FundProjectProvider>();
    provider.setProjectReserve(
        ProjectReserveData(userReserverInfo: listReserveData));
  }
}
