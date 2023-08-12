import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/theme/colors/tribe_color_schema.dart';
import 'package:tribes_crowdfunding_interview_project/theme/typograpy.dart';

/// A class which contain color scheme and text styles.
class CompanyTheme {
  const CompanyTheme({
    required this.colorScheme,
    required this.textStyleScheme,
  });

  static final _fallback = CompanyTheme(
    colorScheme: TribeColorsSchema.light(),
    textStyleScheme: TextStyleSchema(),
  );

  final TribeColorsSchema colorScheme;
  final TextStyleSchema textStyleScheme;

  @override
  bool operator ==(covariant CompanyTheme other) =>
      colorScheme == other.colorScheme &&
      textStyleScheme == other.textStyleScheme;

  @override
  int get hashCode => colorScheme.hashCode ^ textStyleScheme.hashCode;
}

class TribesThemeProvider extends InheritedWidget {
  const TribesThemeProvider({
    required this.theme,
    required super.child,
    super.key,
  });

  final CompanyTheme theme;

  /// Returns [CompanyTheme] object with corresponding [TribeColorsSchema] and [TextStyleSchema]
  static CompanyTheme of(BuildContext context) {
    final inheritedTheme =
        context.dependOnInheritedWidgetOfExactType<TribesThemeProvider>();

    return inheritedTheme?.theme ?? CompanyTheme._fallback;
  }

  @override
  bool updateShouldNotify(covariant TribesThemeProvider oldWidget) {
    return theme != theme;
  }
}

extension BuildContextTheme on BuildContext {
  TribeColorsSchema get colors => TribesThemeProvider.of(this).colorScheme;
  TextStyleSchema get textStyles => TribesThemeProvider.of(this).textStyleScheme;
}
