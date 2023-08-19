import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';

class TribeInputText extends StatefulWidget {
  const TribeInputText({
    super.key,
    this.controller,
    this.prefix,
    this.suffix,
    this.hint,
    this.error,
    this.autofocus = false,
    this.autocorrect = false,
    this.keyboardType,
    this.textCapitalization,
    this.textInputFormatters,
    this.onValueChange,
  });

  final String? prefix;
  final String? suffix;
  final String? hint;
  final String? error;
  final bool autofocus;
  final bool autocorrect;
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final List<TextInputFormatter>? textInputFormatters;
  final TextEditingController? controller;
  final ValueSetter<String>? onValueChange;

  @override
  State<TribeInputText> createState() => _TribeInputTextState();
}

class _TribeInputTextState extends State<TribeInputText> {
  final TextEditingController _controller = TextEditingController();

  TextEditingController get _activeController =>
      widget.controller != null ? widget.controller! : _controller;

  @override
  void initState() {
    _activeController.addListener(() => setState(() {
          final text = _activeController.text;
          widget.onValueChange?.call(text);
        }));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant TribeInputText oldWidget) {
    if (widget.prefix != oldWidget.prefix ||
        widget.suffix != oldWidget.suffix ||
        widget.error != oldWidget.error ||
        widget.hint != oldWidget.hint) {
      setState(() {});
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final prefix = widget.prefix;
    final suffix = widget.suffix;
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: context.colors.labelLight6,
      ),
    );
    final textColor = context.colors.labelLight1;

    return TextField(
      controller: _activeController,
      autofocus: widget.autofocus,
      keyboardType: widget.keyboardType,
      autocorrect: widget.autocorrect,
      textCapitalization: TextCapitalization.characters,
      inputFormatters: widget.textInputFormatters,
      // TODO(yaroslav): ask designer to include into theme palete
      cursorColor: const Color(0xFF007AFF),
      style: context.textStyles.header4.copyWith(
        color: textColor,
      ),
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefix: prefix != null ? Text(prefix) : null,
        suffix: suffix != null
            ? Transform.translate(
                offset: const Offset(0, -4),
                child: Text(
                  suffix,
                ),
              )
            : null,
        hintText: widget.hint,
        prefixStyle: context.textStyles.header4.copyWith(
                fontWeight: FontWeight.w400,
              ),
        suffixStyle: context.textStyles.body,
        errorText: widget.error,
        contentPadding: const EdgeInsets.all(16),
        filled: true,
        fillColor: context.colors.labelLight6,
        border: border,
        focusedBorder: border,
        errorBorder: border,
        focusedErrorBorder: border,
        disabledBorder: border,
        enabledBorder: border,
      ),
    );
  }
}
