import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/styles/text_style.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/custom_button.dart';

enum TextButtonStyle { black, white }

class CustomTextButton extends StatelessWidget {
  final String title;
  final TextButtonStyle style;
  final Function()? onPressed;

  const CustomTextButton(
      {Key? key,
      this.title = '',
      this.onPressed,
      this.style = TextButtonStyle.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onPressed,
      color: style == TextButtonStyle.black ? Colors.black : Colors.white,
      child: Text(
        title,
        style: style == TextButtonStyle.black
            ? TextStyling.button.copyWith(color: Colors.white)
            : TextStyling.button.copyWith(color: Colors.black),
      ),
    );
  }
}
