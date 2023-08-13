import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';

class TribeInputButton extends StatelessWidget {
  const TribeInputButton({
    super.key,
    required this.hint,
    required this.onPressed,
  });

  final String hint;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: context.colors.labelLight6,
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 8,
        ),
        child: Text(
          hint,
          textAlign: TextAlign.start,
          style: context.textStyles.body.copyWith(
            color: context.colors.labelLight2,
          ),
        ),
      ),
    );
  }
}
