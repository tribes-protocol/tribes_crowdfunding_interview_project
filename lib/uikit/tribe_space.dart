import 'package:flutter/material.dart';

class Spacing {
  Spacing._();

  static const hairline = 0.5;
  static const divider = 1.0;
  static const micro = 2.0;
  static const half = 4.0;
  static const standard = 8.0;
  static const oneAndHalf = 12.0;
  static const double = 16.0;
  static const triple = 24.0;
  static const quad = 32.0;
  static const x6 = 48.0;
  static const x8 = 64.0;
  static const x10 = 80.0;
}

class TribeSpaceHorizontal extends StatelessWidget {
  const TribeSpaceHorizontal(
    this.width, {
    super.key,
  });

  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }

  factory TribeSpaceHorizontal.hairline() => const TribeSpaceHorizontal(Spacing.hairline);
  factory TribeSpaceHorizontal.micro() => const TribeSpaceHorizontal(Spacing.micro);
  factory TribeSpaceHorizontal.half() => const TribeSpaceHorizontal(Spacing.half);
  factory TribeSpaceHorizontal.standard() => const TribeSpaceHorizontal(Spacing.standard);
  factory TribeSpaceHorizontal.oneAndHalf() => const TribeSpaceHorizontal(Spacing.oneAndHalf);
  factory TribeSpaceHorizontal.double() => const TribeSpaceHorizontal(Spacing.double);
  factory TribeSpaceHorizontal.triple() => const TribeSpaceHorizontal(Spacing.triple);
  factory TribeSpaceHorizontal.quad() => const TribeSpaceHorizontal(Spacing.quad);
  factory TribeSpaceHorizontal.x6() => const TribeSpaceHorizontal(Spacing.x6);
  factory TribeSpaceHorizontal.x8() => const TribeSpaceHorizontal(Spacing.x8);
  factory TribeSpaceHorizontal.x10() => const TribeSpaceHorizontal(Spacing.x10);
}

class TribeSpaceVertical extends StatelessWidget {
  const TribeSpaceVertical(
    this.height, {
    super.key,
  });

  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }

  factory TribeSpaceVertical.hairline() => const TribeSpaceVertical(Spacing.hairline);
  factory TribeSpaceVertical.divider() => const TribeSpaceVertical(Spacing.divider);
  factory TribeSpaceVertical.micro() => const TribeSpaceVertical(Spacing.micro);
  factory TribeSpaceVertical.half() => const TribeSpaceVertical(Spacing.half);
  factory TribeSpaceVertical.standard() => const TribeSpaceVertical(Spacing.standard);
  factory TribeSpaceVertical.oneAndHalf() => const TribeSpaceVertical(Spacing.oneAndHalf);
  factory TribeSpaceVertical.double() => const TribeSpaceVertical(Spacing.double);
  factory TribeSpaceVertical.triple() => const TribeSpaceVertical(Spacing.triple);
  factory TribeSpaceVertical.quad() => const TribeSpaceVertical(Spacing.quad);
  factory TribeSpaceVertical.x6() => const TribeSpaceVertical(Spacing.x6);
  factory TribeSpaceVertical.x8() => const TribeSpaceVertical(Spacing.x8);
  factory TribeSpaceVertical.x10() => const TribeSpaceVertical(Spacing.x10);
}
