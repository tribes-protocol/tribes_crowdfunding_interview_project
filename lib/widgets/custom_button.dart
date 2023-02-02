import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget? child;
  final Function()? onPressed;
  final Color? color;
  const CustomButton(
      {Key? key, this.child, this.onPressed, this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(24),
        child: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(vertical: 8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(24),
          ),
          child: child,
        ),
      ),
    );
  }
}
