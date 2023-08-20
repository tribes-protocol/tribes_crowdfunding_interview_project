import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribeProgressIndicator extends StatefulWidget {
  const TribeProgressIndicator({
    super.key,
    required this.steps,
    required this.progress,
  }) : assert(
            progress <= steps, 'Progress can`t be be bigger the overall steps');

  final int steps;
  final int progress;

  @override
  State<TribeProgressIndicator> createState() => _TribeProgressIndicatorState();
}

class _TribeProgressIndicatorState extends State<TribeProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    final stepWidgets = List.generate(
        widget.steps,
        (index) => [
              TribeSpaceHorizontal.micro(),
              Expanded(
                child: _AnimatedStep(
                  index,
                  selected: index <= widget.progress,
                ),
              )
            ]).expand(
      (element) => element,
    );
    return Row(
      children: [...stepWidgets],
    );
  }
}

class _AnimatedStep extends StatefulWidget {
  const _AnimatedStep(
    this.index, {
    required this.selected,
  });

  final int index;
  final bool selected;

  @override
  State<_AnimatedStep> createState() => _AnimatedStepState();
}

class _AnimatedStepState extends State<_AnimatedStep>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
  );

  bool _indicatorVisible = false;

  late Tween<Offset> _tween;

  late final Animation<Offset> _selectedAnimation;

  void _reinitTween({required bool forward}) {
    if (forward) {
      _tween.begin = const Offset(-1, 0);
      _tween.end = const Offset(0, 0);
    } else {
      _tween.begin = const Offset(0, 0);
      _tween.end = const Offset(-1, 0);
    }
  }

  @override
  void initState() {
    _indicatorVisible = widget.selected;
    _tween = Tween();
    _selectedAnimation = _tween.animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));
    _reinitTween(forward: true);

    _controller.duration = Duration.zero;
    _controller.forward();
    _controller.duration = const Duration(milliseconds: 450);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant _AnimatedStep oldWidget) {
    if (widget.selected != oldWidget.selected) {
      _indicatorVisible = true;
      if (widget.selected) {
        _reinitTween(forward: true);
      } else {
        _reinitTween(forward: false);
      }
      _controller.reset();
      _controller.forward();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Stack(
        children: [
          const _Step(),
          SlideTransition(
            position: _selectedAnimation,
            child: _Step(
              selected: _indicatorVisible,
            ),
          ),
        ],
      ),
    );
  }
}

class _Step extends StatelessWidget {
  const _Step({
    this.selected = false,
  });

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Spacing.half,
      decoration: ShapeDecoration(
        color: selected
            ? context.colors.indicatorColor
            : context.colors.labelLight6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
