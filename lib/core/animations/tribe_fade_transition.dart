import 'dart:async';

import 'package:flutter/material.dart';

class TribeFadeTransition extends StatefulWidget {
  const TribeFadeTransition({
    super.key,
    required this.child,
    this.delay = Duration.zero,
  });

  final Widget child;
  final Duration delay;

  @override
  State<TribeFadeTransition> createState() => _TribeFadeTransitionState();
}

class _TribeFadeTransitionState extends State<TribeFadeTransition>
    with TickerProviderStateMixin {
  static const _duration = Duration(milliseconds: 1200);

  late final AnimationController _opacityController = AnimationController(
    vsync: this,
    duration: _duration,
  );

  late final AnimationController _offsetController = AnimationController(
    vsync: this,
    duration: _duration,
  );

  late Animation<Offset> _offsetAnimation;
  late Animation<double> _opacityAnimation;

  final _transitionTtween = Tween<Offset>(
    begin: const Offset(1, 0),
    end: const Offset(0, 0),
  );

  final _opacityTween = Tween<double>(
    begin: 0,
    end: 1,
  );

  @override
  void initState() {
    _opacityAnimation = _opacityTween.animate(CurvedAnimation(
      parent: _opacityController,
      curve: Curves.fastOutSlowIn,
    ));
    _offsetAnimation = _transitionTtween.animate(CurvedAnimation(
      parent: _opacityController,
      curve: Curves.fastOutSlowIn,
    ));
    unawaited(
      Future.delayed(widget.delay).then((_) {
        _opacityController.forward();
        _offsetController.forward();
      }),
    );
    super.initState();
  }

  @override
  void dispose() {
    _opacityController.dispose();
    _offsetController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _opacityAnimation,
      child: SlideTransition(
        position: _offsetAnimation,
        child: widget.child,
      ),
    );
  }
}
