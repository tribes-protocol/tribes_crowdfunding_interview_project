import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  final Color? color;
  final Widget? child;
  final double? size;
  const CircleContainer({Key? key, this.child, this.color, this.size = 175})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size,
      width: size,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: child,
    );
  }
}
