import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribeContactTile extends StatelessWidget {
  const TribeContactTile({
    super.key,
    this.icon,
    required this.name,
    required this.tokenIcon,
    required this.hash,
  });

  final Widget? icon;
  final String name;
  final Widget tokenIcon;
  final String hash;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border:
              Border.all(color: context.colors.labelLight5.withOpacity(0.08)),
          borderRadius: icon == null ? BorderRadius.circular(20) : null,
        ),
        child: CircleAvatar(
          radius: 40,
          backgroundColor: context.colors.labelLight6,
        ),
      ),
      title: Text(
        name,
        style: context.textStyles.body.copyWith(
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: Spacing.double,
            height: Spacing.double,
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: context.colors.labelLight5.withOpacity(0.08)),
                  borderRadius: BorderRadius.circular(Spacing.standard),
                ),
                child: tokenIcon),
          ),
          TribeSpaceHorizontal.half(),
          Transform.translate(
              offset: const Offset(0, -1),
              child: Text(
                hash,
                style: context.textStyles.secondary,
              ))
        ],
      ),
    );
  }
}
