import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribeMoneyInputText extends StatefulWidget {
  const TribeMoneyInputText({
    super.key,
    this.controller,
    this.prefix,
    this.suffix,
    this.hint,
    this.autofocus = false,
    this.onValueChange,
  });

  final String? prefix;
  final String? suffix;
  final String? hint;
  final bool autofocus;
  final TextEditingController? controller;
  final ValueSetter<String>? onValueChange;

  @override
  State<TribeMoneyInputText> createState() => _TribeMoneyInputTextState();
}

class _TribeMoneyInputTextState extends State<TribeMoneyInputText> {
  final TextEditingController _controller = TextEditingController();

  TextEditingController get _activeController =>
      widget.controller != null ? widget.controller! : _controller;

  @override
  void initState() {
    _activeController.addListener(() => setState(
          () {
            final text = _activeController.text;
            widget.onValueChange?.call(text.replaceAll(',', ''));
          },
        ));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant TribeMoneyInputText oldWidget) {
    if (widget.prefix != oldWidget.prefix ||
        widget.suffix != oldWidget.suffix ||
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
      borderRadius: BorderRadius.circular(Spacing.standard),
      borderSide: BorderSide(
        color: context.colors.labelLight6,
      ),
    );
    final textColor = context.colors.labelLight1;

    return TextField(
      controller: _activeController,
      keyboardType: TextInputType.number,
      autocorrect: false,
      textCapitalization: TextCapitalization.characters,
      inputFormatters: [
        CurrencyTextInputFormatter(symbol: ''),
      ],
      // TODO(yaroslav): ask designer to include into theme palete
      cursorColor: const Color(0xFF007AFF),
      style: context.textStyles.header4.copyWith(
        color: textColor,
      ),
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefix: prefix != null && _controller.text.isEmpty
            ? Text(prefix)
            : null,
        suffix: suffix != null
            ? Transform.translate(
                offset: const Offset(0, -4),
                child: Text(
                  suffix,
                ),
              )
            : null,
        hintText: widget.hint,
        prefixStyle: context.textStyles.header4,
        suffixStyle: context.textStyles.body,
        contentPadding: const EdgeInsets.all(Spacing.double),
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
