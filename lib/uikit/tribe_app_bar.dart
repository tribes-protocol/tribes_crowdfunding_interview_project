import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:tribes_crowdfunding_interview_project/gen/assets.gen.dart';

class TribeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TribeAppBar({
    super.key,
    this.onBack,
  });

  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 24,
      leading: InkWell(
        onTap: onBack,
        child: Transform.flip(
            flipX: true,
            child: SvgPicture.asset(
              Assets.icons.arrowRight,
            )),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
