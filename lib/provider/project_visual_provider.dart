import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/class/project_funding_info.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:tribes_crowdfunding_interview_project/provider/fund_project_provider.dart';

class ProjectVisualProvider extends ChangeNotifier {
  bool isCompleted = false;
  ProjectVisualData projectVisualData = ProjectVisualData();
  ProjectVisualType? get visualType => projectVisualData.projectVisualType;
  EmojiVisual? get emojiVisual => projectVisualData.emojiVisual;
  ImageVisual? get imageVisual => projectVisualData.imageVisual;
  void setEmojiVisual(EmojiVisual emojiVisual) {
    projectVisualData = ProjectVisualData(
        emojiVisual: emojiVisual, projectVisualType: ProjectVisualType.isEmoji);
    isCompleted = true;
    notifyListeners();
  }

  void getImageVisual() async {
    final ImagePicker imagePicker = ImagePicker();
    final XFile? image =
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      CroppedFile? croppedImage = await ImageCropper().cropImage(
        maxHeight: 200,
        maxWidth: 200,
        sourcePath: image.path,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      );
      if (croppedImage != null) {
        setImageVisual(ImageVisual(
          path: croppedImage.path,
          sourceType: ImagePathSourceType.fromLocal,
        ));
      }
    }
  }

  void setImageVisual(ImageVisual imageVisual) {
    projectVisualData = ProjectVisualData(
        projectVisualType: ProjectVisualType.isImage, imageVisual: imageVisual);
    isCompleted = true;
    notifyListeners();
  }

  void submit(BuildContext context) {
    var provider = context.read<FundProjectProvider>();
    provider.setProjectVisual(projectVisualData);
  }
}
