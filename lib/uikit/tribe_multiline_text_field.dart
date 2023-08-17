import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribeMultiLineTextField extends StatefulWidget {
  const TribeMultiLineTextField({
    super.key,
    this.controller,
    this.hint,
    this.onTextChanged,
  });

  final String? hint;
  final TextEditingController? controller;
  final ValueSetter<String>? onTextChanged;

  @override
  State<TribeMultiLineTextField> createState() =>
      _TribeMultiLineTextFieldState();
}

class _TribeMultiLineTextFieldState extends State<TribeMultiLineTextField> {
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: context.colors.labelLight6,
      ),
    );
    return TextField(
      controller: widget.controller,
      keyboardType: TextInputType.multiline,
      autocorrect: false,
      enableSuggestions: false,
      maxLines: null,
      minLines: 6,
      onChanged: (value) => widget.onTextChanged?.call(value),
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: context.textStyles.body,
        contentPadding: const EdgeInsets.all(Spacing.standard),
        filled: true,
        fillColor: context.colors.labelLight6,
        errorBorder: border,
        focusedBorder: border,
        focusedErrorBorder: border,
        disabledBorder: border,
        enabledBorder: border,
        border: border,
      ),
    );
  }
}
