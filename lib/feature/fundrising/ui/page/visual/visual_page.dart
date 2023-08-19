import 'dart:io';
import 'dart:math';

import 'package:emojis/emoji.dart';
import 'package:flutter/material.dart';
import 'package:emojis/emojis.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/emoji/emoji_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/emoji/emoji_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/visual/provider/visual_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/visual/visual_contract.dart';
import 'package:tribes_crowdfunding_interview_project/gen/assets.gen.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_app_bar.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_button.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_color_spot.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_visual.dart';
import 'package:image_picker/image_picker.dart';

class VisualPage extends ConsumerStatefulWidget {
  const VisualPage({
    super.key,
    this.params,
  });

  final VisualParams? params;

  @override
  ConsumerState<VisualPage> createState() => _VisualPageState();
}

class _VisualPageState extends ConsumerState<VisualPage> {
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(visualControllerProvider.notifier).init(widget.params);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(visualControllerProvider.notifier);
    final state = ref.watch(visualControllerProvider);
    Future<bool> onBack() async {
      context
          .pop(VisualResult(type: state.visualType, background: state.color));
      return true;
    }

    return WillPopScope(
      onWillPop: onBack,
      child: Scaffold(
        appBar: widget.params != null
            ? TribeAppBar(
                onBack: onBack,
              )
            : null,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: ListView(
                    shrinkWrap: true,
                    children: [
                      Text(
                        context.localisation.visualTitle,
                        style: context.textStyles.header4,
                      ),
                      Text(
                        context.localisation.visualSubtitle,
                        style: context.textStyles.body,
                      ),
                      TribeSpaceVertical.x8(),
                      TribeVisual(
                        type: state.visualType,
                        background: state.color,
                        onShufflePressed: () {
                          final random = Random();
                          final emojies = Emoji.all();
                          final colors = TribeColorPalette.colors;
                          final emoji =
                              emojies[random.nextInt(emojies.length - 1)];
                          final color = colors[random.nextInt(colors.length - 1)];
              
                          controller.setEmoji(emoji.char, color);
                        },
                      ),
                      TribeSpaceVertical.x8(),
                      TribeSpaceVertical.x8(),
                      TribeButton(
                          text: context.localisation.commoPhoto,
                          onPressed: () async {
                            final pickedFile = await _picker.pickImage(
                              source: ImageSource.gallery,
                              maxWidth: 1800,
                              maxHeight: 1800,
                            );
                            if (pickedFile != null && context.mounted) {
                              final croppedFile = await ImageCropper().cropImage(
                                sourcePath: pickedFile.path,
                                compressFormat: ImageCompressFormat.jpg,
                                compressQuality: 100,
                                cropStyle: CropStyle.circle,
                                uiSettings: [
                                  AndroidUiSettings(
                                      toolbarTitle:
                                          context.localisation.visualMoveAndScale,
                                      toolbarColor: Colors.deepOrange,
                                      toolbarWidgetColor: Colors.white,
                                      initAspectRatio:
                                          CropAspectRatioPreset.original,
                                      lockAspectRatio: false),
                                  IOSUiSettings(
                                    title:
                                        context.localisation.visualMoveAndScale,
                                  ),
                                ],
                              );
              
                              if (croppedFile != null) {
                                controller.setImage(croppedFile.path);
                              }
                            }
                          }),
                      TribeButton(
                        text: context.localisation.commoEmoji,
                        onPressed: () async {
                          final state = ref.read(visualControllerProvider);
                          final params = state.visualType.map(
                            emoji: (emoji) =>
                                EmojiParams(emoji.emoji, state.color),
                            image: (_) => null,
                          );
                          final result = await context.pushNamed<EmojiResult?>(
                            EmojiContract.name,
                            extra: params,
                          );
              
                          if (result != null) {
                            controller.setEmoji(result.emoji, result.color);
                          }
                        },
                      ),
                    ],
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
