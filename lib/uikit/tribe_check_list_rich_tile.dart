import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tribes_crowdfunding_interview_project/gen/assets.gen.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribeCheckListRichTile extends StatelessWidget {
  const TribeCheckListRichTile({
    super.key,
    required this.leadinTitle,
    this.trailingTitle,
    this.trailingSubtitle,
    this.onPressed,
  });

  final String leadinTitle;
  final String? trailingTitle;
  final String? trailingSubtitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(leadinTitle, style: context.textStyles.body),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (trailingTitle != null)
                Text(
                  trailingTitle!,
                  style: context.textStyles.body
                      .copyWith(fontWeight: FontWeight.w700),
                ),
              if (trailingTitle != null && trailingSubtitle != null)
                TribeSpaceVertical.half(),
              if (trailingSubtitle != null)
                Text(
                  trailingSubtitle!,
                  style: context.textStyles.secondary,
                ),
            ],
          ),
          TribeSpaceHorizontal.standard(),
          SvgPicture.asset(
            Assets.icons.arrowRight,
            height: 24,
            width: 24,
          ),
        ],
      ),
      onTap: onPressed,
    );
  }
}
