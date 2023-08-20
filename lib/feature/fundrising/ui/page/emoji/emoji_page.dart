import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/emoji/emoji_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/emoji/provider/emoji_provider.dart';
import 'package:tribes_crowdfunding_interview_project/gen/assets.gen.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_color_spot.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_tab_switcher.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';

class EmojiPage extends ConsumerStatefulWidget {
  const EmojiPage({
    super.key,
    this.emoji,
    this.color,
  });

  final String? emoji;
  final Color? color;

  @override
  ConsumerState<EmojiPage> createState() => _EmojiPageState();
}

class _EmojiPageState extends ConsumerState<EmojiPage> {
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(emojiControllerProvider.notifier).init(widget.emoji, widget.color);
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(emojiControllerProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(Spacing.double),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    onTap: () {
                      final state = ref.read(emojiControllerProvider);
                      context.pop(EmojiResult(state.emoji, state.color));
                    },
                    child: Text(
                      context.localisation.commoDone,
                      style: context.textStyles.body.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      context.pop();
                    },
                    child: InkWell(
                        child:
                            Text(context.localisation.commoCancel, style: context.textStyles.body)),
                  ),
                ],
              ),
              const _Preview(),
              TribeSpaceVertical.x10(),
              Expanded(
                child: TribeTabSwircher(tabs: [
                  TribeSwitcherTab(
                    label: SvgPicture.asset(Assets.icons.emoji, width: 25, height: 25),
                    child: _EmojiPicker(
                      controller: _controller,
                      onSelected: (emoji) {
                        controller.onEmojiSelected(emoji);
                      },
                    ),
                    selectedColor: context.colors.labelDark1,
                    unselectedColor: context.colors.labelLight1,
                  ),
                  TribeSwitcherTab(
                    label: SvgPicture.asset(
                      Assets.icons.palette,
                      width: 25,
                      height: 25,
                    ),
                    child: TribeColorPalette(
                      onPressed: (Color color) {
                        controller.onColorSelected(color);
                      },
                    ),
                    selectedColor: context.colors.labelDark1,
                    unselectedColor: context.colors.labelLight1,
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Preview extends ConsumerWidget {
  const _Preview();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = ref.watch(emojiControllerProvider.select((state) => state.color));
    final emoji = ref.watch(emojiControllerProvider.select((state) => state.emoji));

    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        color: color,
        width: 150,
        height: 150,
        child: Center(
          child: Text(
            emoji,
            style: const TextStyle(fontSize: 90),
          ),
        ),
      ),
    );
  }
}

class _EmojiPicker extends StatefulWidget {
  const _EmojiPicker({
    required this.controller,
    required this.onSelected,
  });

  final TextEditingController controller;
  final ValueSetter<Emoji> onSelected;

  @override
  State<_EmojiPicker> createState() => _EmojiPickerState();
}

class _EmojiPickerState extends State<_EmojiPicker> {
  @override
  Widget build(BuildContext context) {
    return EmojiPicker(
      textEditingController: widget.controller,
      onEmojiSelected: (category, emoji) {
        widget.onSelected(emoji);
      },
      config: Config(
        columns: 7,
        emojiSizeMax: Spacing.quad * (Platform.isIOS ? 1.30 : 1.0),
        verticalSpacing: 0,
        horizontalSpacing: 0,
        gridPadding: EdgeInsets.zero,
        initCategory: Category.RECENT,
        bgColor: const Color(0xFFF2F2F2),
        indicatorColor: Colors.blue,
        iconColor: Colors.grey,
        iconColorSelected: Colors.blue,
        backspaceColor: Colors.blue,
        skinToneDialogBgColor: Colors.white,
        skinToneIndicatorColor: Colors.grey,
        enableSkinTones: true,
        recentTabBehavior: RecentTabBehavior.RECENT,
        recentsLimit: 28,
        noRecents: Text(
          context.localisation.commoNoRecent,
          style: context.textStyles.body,
        ),
        loadingIndicator: const SizedBox.shrink(),
        tabIndicatorAnimDuration: kTabScrollDuration,
        categoryIcons: const CategoryIcons(),
        buttonMode: ButtonMode.MATERIAL,
      ),
    );
  }
}
