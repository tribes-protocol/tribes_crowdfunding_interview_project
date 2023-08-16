import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';

class TribeLoading extends StatelessWidget {
  const TribeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 64,
        height: 64,
        child: CircularProgressIndicator(
          color: context.colors.labelLight6,
        ),
      ),
    );
  }
}
