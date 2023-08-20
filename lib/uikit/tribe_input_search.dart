import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tribes_crowdfunding_interview_project/gen/assets.gen.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribeInputSearch extends StatefulWidget {
  const TribeInputSearch({
    super.key,
    this.hint,
    this.onSearch,
  });

  final String? hint;
  final ValueSetter<String>? onSearch;

  @override
  State<TribeInputSearch> createState() => _TribeInputSearchState();
}

class _TribeInputSearchState extends State<TribeInputSearch> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _controller.addListener(() {
      widget.onSearch?.call(_controller.text);
      setState(() {});
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
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: context.colors.labelLight6,
      ),
    );

    return SizedBox(
      child: Stack(
        children: [
          TextField(
            controller: _controller,
            keyboardType: TextInputType.text,
            // TODO(yaroslav): ask designer to include into theme palete
            cursorColor: const Color(0xFF007AFF),
            style: context.textStyles.body,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              hintText: widget.hint,
              contentPadding: const EdgeInsets.fromLTRB(
                8, 10, 40, 8,
              ),
              filled: true,
              fillColor: context.colors.labelLight6,
              border: border,
              focusedBorder: border,
              errorBorder: border,
              focusedErrorBorder: border,
              disabledBorder: border,
              enabledBorder: border,
            ),
          ),
          PositionedDirectional(
            top: Spacing.oneAndHalf,
            end: Spacing.standard,
              child: InkWell(
                onTap: () {
                  _controller.text = '';
                },
                child: Transform.rotate(
                          angle: 45,
                          child: SvgPicture.asset(
                Assets.icons.closeCircle,
                width: Spacing.triple,
                height: Spacing.triple,
                          ),
                        ),
              ))
        ],
      ),
    );
  }
}
