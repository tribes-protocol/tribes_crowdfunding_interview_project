import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tribes_crowdfunding_interview_project/gen/assets.gen.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribePercentageTile extends StatelessWidget {
  const TribePercentageTile({
    super.key,
    this.icon,
    required this.title,
    this.amount,
    this.splitted = true,
    this.onClose,
  });

  final Widget? icon;
  final String title;
  final double? amount;
  final bool splitted;
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color:
            splitted ? context.colors.labelLight4 : context.colors.baseContent,
        borderRadius: BorderRadius.circular(4),
        border: splitted
            ? Border.all(
                color: context.colors.labelLight4.withOpacity(0.15),
              )
            : null,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 8,
              ),
              decoration: BoxDecoration(
                color: context.colors.baseContent,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (icon != null) ...[
                    SizedBox(width: 24, height: 24, child: icon!),
                    TribeSpaceHorizontal.half(),
                  ],
                  Expanded(
                    child: Transform.translate(
                      offset: const Offset(0, -2),
                      child: Text(
                        title,
                        style: context.textStyles.body,
                      ),
                    ),
                  ),
                  TribeSpaceHorizontal.half(),
                  if (onClose != null)
                    Material(
                      child: InkWell(
                        onTap: onClose,
                        child: SvgPicture.asset(
                          Assets.icons.close,
                          width: 16,
                          height: 16,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          if (amount != null)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 8,
                ),
                child: Text(
                  '$amount %',
                  style: context.textStyles.body,
                  textAlign: TextAlign.end,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
