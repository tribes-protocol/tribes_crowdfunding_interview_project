import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/theme/colors/tribe_color_schema.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/theme/typograpy.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_color_spot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;

    return TribesThemeProvider(
      theme: CompanyTheme(
        textStyleScheme: TextStyleSchema(),
        colorScheme: brightness == Brightness.light
            ? TribeColorsSchema.light()
            : TribeColorsSchema.dark(),
      ),
      child: Builder(builder: (context) {
        return MaterialApp(
          title: 'Tribes Crowdfunder',
          home: Scaffold(
            body: Center(
              child: TribeColorPalette(onPressed: (value) {
                
              },),
            ),
          ),
        );
      }),
    );
  }
}
