import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';

class TribeError extends StatelessWidget {
  const TribeError({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.localisation.commonError,
        style: context.textStyles.header3,
      ),
    );
  }
}
