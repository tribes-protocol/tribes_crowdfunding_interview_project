import 'package:flutter/material.dart';

class TribeColorSpot extends StatelessWidget {
  const TribeColorSpot({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      minRadius: 80,
      maxRadius: 80,
      backgroundColor: color,
    );
  }
}
