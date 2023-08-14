import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribeButton extends StatelessWidget {
  const TribeButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: context.colors.labelLight1,
            padding: const EdgeInsets.symmetric(
              vertical: Spacing.standard,
              horizontal: Spacing.standard,
            )),
        child: Align(
          alignment: Alignment.center,
          child: Transform.translate(
            offset: const Offset(0, -2),
            child: Text(
              text,
              // TODO(yaroslav): ask designer to add into text styles
              style: TextStyle(
                color: context.colors.labelDark1,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 1.50,
              ),
            ),
          ),
        ));
  }
}
