import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribeColorPalette extends StatelessWidget {
  const TribeColorPalette({
    super.key,
    required this.onPressed,
  });

  final ValueSetter<Color> onPressed;

  static final List<Color> colors = [
    const Color(0xFF1A1A1A),
    const Color(0xFF1A1A1A).withOpacity(0.6),
    const Color(0xFF1A1A1A).withOpacity(0.1),
    const Color(0xFF1A1A1A).withOpacity(0.04),
    const Color(0xffF60909),
    const Color(0xffF60909).withOpacity(0.6),
    const Color(0xffF60909).withOpacity(0.1),
    const Color(0xffF60909).withOpacity(0.04),
    const Color(0xFFDF5609),
    const Color(0xFFDF5609).withOpacity(0.6),
    const Color(0xFFDF5609).withOpacity(0.1),
    const Color(0xFFDF5609).withOpacity(0.04),
    const Color(0xFFF6DF0A),
    const Color(0xFFF6DF0A).withOpacity(0.6),
    const Color(0xFFF6DF0A).withOpacity(0.1),
    const Color(0xFFF6DF0A).withOpacity(0.04),
    const Color(0xFF35A34D),
    const Color(0xFF35A34D).withOpacity(0.6),
    const Color(0xFF35A34D).withOpacity(0.1),
    const Color(0xFF35A34D).withOpacity(0.04),
    const Color(0xE5187DF3),
    const Color(0xE5187DF3).withOpacity(0.6),
    const Color(0xE5187DF3).withOpacity(0.1),
    const Color(0xE5187DF3).withOpacity(0.04),
    const Color(0xFF7B18F7),
    const Color(0xFF7B18F7).withOpacity(0.6),
    const Color(0xFF7B18F7).withOpacity(0.1),
    const Color(0xFF7B18F7).withOpacity(0.04),
    const Color(0xFFFF549B),
    const Color(0xFFFF549B).withOpacity(0.6),
    const Color(0xFFFF549B).withOpacity(0.1),
    const Color(0xFFFF549B).withOpacity(0.04),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      children: List.generate(
        colors.length,
        (index) => InkWell(
          customBorder: const CircleBorder(),
          onTap: () => onPressed(colors[index]),
          child: Padding(
            padding: const EdgeInsets.all(Spacing.half),
            child: TribeColorSpot(color: colors[index]),
          ),
        ),
      ),
    );
  }
}

class TribeColorSpot extends StatelessWidget {
  const TribeColorSpot({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      minRadius: 80,
      maxRadius: 80,
      backgroundColor: color,
    );
  }
}
