import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/gen/assets.gen.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribeMajoritySplitter extends StatefulWidget {
  const TribeMajoritySplitter({
    super.key,
    this.current = 1,
    required this.total,
    required this.onIncrease,
    required this.onDecrease,
  }) : assert(total >= 1, 'Signers should be more then 1');

  final int current;
  final int total;
  final ValueSetter<int> onIncrease;
  final ValueSetter<int> onDecrease;

  @override
  State<TribeMajoritySplitter> createState() => _TribeMajoritySplitterState();
}

class _TribeMajoritySplitterState extends State<TribeMajoritySplitter> {
  int _current = 1;

  @override
  void didUpdateWidget(covariant TribeMajoritySplitter oldWidget) {
    if (widget.current > 0 &&
        widget.current <= widget.total &&
        widget.current != _current) {
      setState(() {
        _current = widget.current;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          context.localisation.managementSignersAmount(_current, widget.total),
          style: context.textStyles.body,
        ),
        const Spacer(),
        if (_current == 2)
          Container(
            color: context.colors.labelLight6,
            child: Text(
              'Recommended majority',
              style: context.textStyles.body.copyWith(fontSize: 13),
            ),
          ),
        const Spacer(),
        InkWell(
          onTap: () {
            if (_current > 1) {
              setState(() {
                _current--;
                widget.onDecrease(_current);
              });
            }
          },
          child: SvgPicture.asset(
            Assets.icons.removeCircle,
            width: 28,
            height: 28,
            colorFilter: _current > 1
                ? ColorFilter.mode(
                    context.colors.indicatorColor, BlendMode.srcIn)
                : ColorFilter.mode(context.colors.labelLight3, BlendMode.srcIn),
          ),
        ),
        TribeSpaceHorizontal.standard(),
        InkWell(
          onTap: () {
            if (_current >= 1 && _current < widget.total) {
              setState(() {
                _current++;
                widget.onIncrease(_current);
              });
            }
          },
          child: SvgPicture.asset(
            Assets.icons.addCircle,
            width: Spacing.triple,
            height: Spacing.triple,
            colorFilter: _current >= 1 && _current < widget.total
                ? ColorFilter.mode(
                    context.colors.indicatorColor, BlendMode.srcIn)
                : ColorFilter.mode(context.colors.labelLight3, BlendMode.srcIn),
          ),
        )
      ],
    );
  }
}
