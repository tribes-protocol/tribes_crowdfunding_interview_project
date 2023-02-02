import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:tribes_crowdfunding_interview_project/class/project_funding_info.dart';
import 'package:tribes_crowdfunding_interview_project/styles/spacing.dart';
import 'package:tribes_crowdfunding_interview_project/styles/text_style.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/circle_container.dart';

class EmojiPickingPage extends StatefulWidget {
  const EmojiPickingPage({Key? key}) : super(key: key);

  @override
  State<EmojiPickingPage> createState() => _EmojiPickingPageState();
}

class _EmojiPickingPageState extends State<EmojiPickingPage> {
  Color pickedColor = Colors.black;
  Emoji? pickedEmoji;
  bool showEmojiPicker = false;
  void changeColor(Color color) {
    setState(() => pickedColor = color);
  }

  void changeEmoji(Emoji emoji) {
    setState(() {
      pickedEmoji = emoji;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(
        top: kToolbarHeight,
        left: Spacing.double,
        right: Spacing.double,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: pickedEmoji != null
                    ? () {
                        Navigator.pop(
                            context,
                            EmojiVisual(
                                color: pickedColor, emoji: pickedEmoji));
                      }
                    : null,
                child: Text(
                  "Done",
                  style: TextStyling.body1.copyWith(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Cancel",
                  style: TextStyling.body.copyWith(color: Colors.black),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: CircleContainer(
              color: pickedColor,
              child: Text(
                pickedEmoji?.emoji ?? '',
                style: const TextStyle(fontSize: 100),
              ),
            ),
          ),
          DefaultTabController(
            length: 2,
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25),
              ),
              child: TabBar(
                  onTap: (int tab) {
                    if (tab == 0) {
                      setState(() {
                        showEmojiPicker = true;
                      });
                    } else if (tab == 1) {
                      setState(() {
                        showEmojiPicker = false;
                      });
                      showModalBottomSheet(
                          context: context,
                          builder: (_) {
                            return SingleChildScrollView(
                              child: MaterialPicker(
                                pickerColor: pickedColor,
                                onColorChanged: changeColor,
                                enableLabel: false,
                                portraitOnly: false,
                              ),
                            );
                          });
                    }
                  },
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  tabs: const [
                    Icon(Icons.tag_faces_outlined),
                    Icon(Icons.color_lens_outlined),
                  ]),
            ),
          ),
          const Spacer(),
          Offstage(
            offstage: !showEmojiPicker,
            child: SizedBox(
              height: 400,
              child: EmojiPicker(
                onEmojiSelected: (catorogy, emoji) {
                  changeEmoji(emoji);
                },
              ),
            ),
          )
        ],
      ),
    ));
  }
}
