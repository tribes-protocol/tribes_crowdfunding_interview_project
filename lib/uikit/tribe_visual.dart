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
              style: const TextStyle(fontSize: 100),
            ),
        image: (data) => Image.file(
              File(data.path),
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ));

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: widget.onImagePressed,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              color: widget.background,
              width: 150,
              height: 150,
              child: Center(
                child: content,
              ),
            ),
          ),
        ),
        if (widget.onShufflePressed != null) ...[
          TribeSpaceVertical.double(),
          InkWell(
              onTap: widget.onShufflePressed,
              child: SvgPicture.asset(
                Assets.icons.shuffle,
                width: Spacing.triple,
                height: Spacing.triple,
              ))
        ]
      ],
    );
  }
}
