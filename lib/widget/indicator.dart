import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({Key? key, this.isActive = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 2,
          width: 20,
          decoration: const BoxDecoration(
              shape: BoxShape.rectangle, color: Colors.grey),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 2,
          width: isActive ? 20 : 0,
          decoration: const BoxDecoration(
              shape: BoxShape.rectangle, color: Colors.blue),
        )
      ],
    );
  }
}
