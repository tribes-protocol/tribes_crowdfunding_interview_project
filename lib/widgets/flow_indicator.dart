import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/indicator.dart';

class FlowIndicator extends StatelessWidget {
  final int currentPage;
  final int numberOfPage;
  const FlowIndicator(
      {Key? key, required this.currentPage, required this.numberOfPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(
        numberOfPage,
        (index) => Indicator(
          isActive: index <= currentPage,
        ),
      ),
    );
  }
}
