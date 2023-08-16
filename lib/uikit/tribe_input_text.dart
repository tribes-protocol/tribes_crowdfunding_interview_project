import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';

enum TribeInputType {
  money,
  text,
}

class TribeInputText extends StatefulWidget {
  const TribeInputText({
    super.key,
    this.controller,
    this.prefix,
    this.suffix,
    this.hint,
    this.textInputType = TribeInputType.money,
    this.onValueChange,
  });

  final String? prefix;
  final String? suffix;
  final String? hint;
  final TextEditingController? controller;
  final TribeInputType textInputType;
  final ValueSetter<String>? onValueChange;

  @override
  State<TribeInputText> createState() => _TribeInputTextState();
}

class _TribeInputTextState extends State<TribeInputText> {
  final TextEditingController _controller = TextEditingController();
  late TextInputType _inputType;

  TextEditingController get _activeController =>
      widget.controller != null ? widget.controller! : _controller;

  @override
  void initState() {
    _initKeyboard();
    _activeController.addListener(() => setState(() {
          final text = _activeController.text;
          if (widget.textInputType == TribeInputType.money) {
            widget.onValueChange?.call(text.replaceAll(',', ''));
          } else {
            widget.onValueChange?.call(text);
          }
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
        widget.hint != oldWidget.hint) {
      setState(() {});
    } else if (widget.textInputType != oldWidget.textInputType) {
      _initKeyboard();
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
    final textColor = _activeController.text == '0' && widget.textInputType == TribeInputType.money
        ? context.colors.labelLight3
        : context.colors.labelLight1;

    return TextField(
      controller: _activeController,
      keyboardType: _inputType,
      inputFormatters: widget.textInputType == TribeInputType.money
          ? [
              CurrencyTextInputFormatter(symbol: ''),
              TestFormatter(),
            ]
          : null,
      // TODO(yaroslav): ask designer to include into theme palete
      cursorColor: const Color(0xFF007AFF),
      style: context.textStyles.header4.copyWith(
        color: textColor,
      ),
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefix: prefix != null && _controller.text.isEmpty ? Text(prefix) : null,
        suffix: suffix != null
            ? Transform.translate(
                offset: const Offset(0, -4),
                child: Text(
                  suffix,
                ),
              )
            : null,
        hintText: widget.hint,
        prefixStyle: widget.textInputType == TribeInputType.money
            ? context.textStyles.header4
            : context.textStyles.header4.copyWith(
                fontWeight: FontWeight.w400,
              ),
        suffixStyle: context.textStyles.body,
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

  void _initKeyboard() {
    switch (widget.textInputType) {
      case TribeInputType.money:
        _inputType = TextInputType.number;
        break;
      case TribeInputType.text:
        _inputType = TextInputType.name;
    }
  }
}

class TestFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return newValue;
  }
}