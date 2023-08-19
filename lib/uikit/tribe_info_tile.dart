import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tribes_crowdfunding_interview_project/gen/assets.gen.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribeInfoTile extends StatelessWidget {
  const TribeInfoTile({
    super.key,
    required this.title,
    this.suffixTitle,
    this.suffixSubtitle,
    this.description,
    this.onPressed,
  });

  final String title;
  final String? suffixTitle;
  final String? suffixSubtitle;
  final Widget? description;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: onPressed,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                title,
                style: context.textStyles.body
                    .copyWith(color: context.colors.labelLight2),
              )),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (suffixTitle != null)
                    Text(
                      suffixTitle!,
                      textAlign: TextAlign.end,
                      style: context.textStyles.body
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                  if (suffixTitle != null && suffixSubtitle != null)
                    TribeSpaceVertical.half(),
                  if (suffixSubtitle != null)
                    Text(
                      suffixSubtitle!,
                      textAlign: TextAlign.end,
                      style: context.textStyles.secondary.copyWith(
                        fontSize: suffixTitle == null ? 16 : 13,
                        color: context.colors.labelLight2,
                      ),
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
          if (description != null) ...[
            TribeSpaceVertical.double(),
            description!,
          ],
        ],
      ),
    );
  }
}
