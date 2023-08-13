import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tribes_crowdfunding_interview_project/gen/assets.gen.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

part 'tribe_visual.freezed.dart';

@freezed
class TribeVisualType with _$TribeVisualType {
  const factory TribeVisualType.emoji({required String emoji}) =
      _TribeVisualTypeEmoji;
  const factory TribeVisualType.image({required String path}) =
      _TribeVisualTypeImage;
}

class TribeVisual extends StatefulWidget {
  const TribeVisual({
    super.key,
    required this.type,
    required this.background,
    this.onImagePressed,
    this.onShufflePressed,
  });

  final TribeVisualType type;
  final Color background;
  final VoidCallback? onImagePressed;
  final VoidCallback? onShufflePressed;

  @override
  State<TribeVisual> createState() => _TribeVisualState();
}

class _TribeVisualState extends State<TribeVisual> {
  @override
  Widget build(BuildContext context) {
    final Widget content = widget.type.map(
        emoji: (data) => Text(
              data.emoji,
              style: const TextStyle(fontSize: 90),
            ),
        image: (data) => Image.file(
              File(data.path),
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ));

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: widget.onImagePressed,
          child: CircleAvatar(
            minRadius: 80,
            maxRadius: 80,
            backgroundColor: widget.background,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: content),
          ),
        ),
        TribeSpaceVertical.double(),
        InkWell(
            onTap: widget.onShufflePressed,
            child: SvgPicture.asset(
              Assets.icons.shuffle,
              width: 24,
              height: 24,
            ))
      ],
    );
  }
}

class ColorsVisual {
  void body() {
    Color(0xFF1A1A1A);
    Color(0xFF1A1A1A).withOpacity(0.6);
    Color(0xFF1A1A1A).withOpacity(0.1);
    Color(0xFF1A1A1A).withOpacity(0.04);

    Color(0xffF60909);
    Color(0xffF60909).withOpacity(0.6);
    Color(0xffF60909).withOpacity(0.1);
    Color(0xffF60909).withOpacity(0.04);

    Color(0xFFDF5609);
    Color(0xFFDF5609).withOpacity(0.6);
    Color(0xFFDF5609).withOpacity(0.1);
    Color(0xFFDF5609).withOpacity(0.04);

    Color(0xFFF6DF0A);
    Color(0xFFF6DF0A).withOpacity(0.6);
    Color(0xFFF6DF0A).withOpacity(0.1);
    Color(0xFFF6DF0A).withOpacity(0.04);

    Color(0xFF35A34D);
    Color(0xFF35A34D).withOpacity(0.6);
    Color(0xFF35A34D).withOpacity(0.1);
    Color(0xFF35A34D).withOpacity(0.04);

    Color(0xE5187DF3);
    Color(0xE5187DF3).withOpacity(0.6);
    Color(0xE5187DF3).withOpacity(0.1);
    Color(0xE5187DF3).withOpacity(0.04);

    Color(0xFF7B18F7);
    Color(0xFF7B18F7).withOpacity(0.6);
    Color(0xFF7B18F7).withOpacity(0.1);
    Color(0xFF7B18F7).withOpacity(0.04);

    Color(0xFFFF549B);
    Color(0xFFFF549B).withOpacity(0.6);
    Color(0xFFFF549B).withOpacity(0.1);
    Color(0xFFFF549B).withOpacity(0.04);
  }
}
