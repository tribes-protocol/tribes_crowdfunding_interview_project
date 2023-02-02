import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/styles/coloring.dart';

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({Key? key, this.isActive = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Stack(
        // fit: StackFit.expand,
        children: [
          Container(
            height: 4,
            width: 36.33,
            // margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 5,
            width: isActive ? 40 : 0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              shape: BoxShape.rectangle,
              color: Coloring.indicatorColor,
            ),
          )
        ],
      ),
    );
  }
}
