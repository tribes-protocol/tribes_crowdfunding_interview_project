import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tribes_crowdfunding_interview_project/gen/assets.gen.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';

class TribeCheckListTile extends StatelessWidget {
  const TribeCheckListTile({
    super.key,
    required this.title,
    this.checked = false,
    this.onChecked,
  });

  final String title;
  final bool checked;
  final ValueSetter<bool>? onChecked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: context.textStyles.body),
      trailing: checked ? SvgPicture.asset(
        Assets.icons.iconCheck,
        width: 24,
        height: 24,
      ) : null,
      onTap: () => onChecked?.call(
        !checked,
      ),
    );
  }
}
