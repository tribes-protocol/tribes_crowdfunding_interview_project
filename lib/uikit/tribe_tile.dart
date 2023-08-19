import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tribes_crowdfunding_interview_project/gen/assets.gen.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribeTile extends StatelessWidget {
  const TribeTile({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.suffix,
    this.onPressed,
  });

  final Widget icon;
  final String title;
  final Widget? subtitle;
  final Widget? suffix;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: Spacing.half),
      onTap: onPressed,
      title: Row(
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: icon,
          ),
          TribeSpaceHorizontal.standard(),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.textStyles.secondary,
                ),
                if (subtitle != null) ...[
                  TribeSpaceHorizontal.half(),
                  subtitle!,
                ]
              ],
            ),
          ),
          suffix ??
              SvgPicture.asset(
                Assets.icons.arrowRight,
                width: 24,
                height: 24,
              )
        ],
      ),
    );
  }
}
