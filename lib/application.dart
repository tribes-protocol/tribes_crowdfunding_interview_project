import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/intro/intro_page.dart';
import 'package:tribes_crowdfunding_interview_project/theme/colors/tribe_color_schema.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/theme/typograpy.dart';

class TribeApplication extends StatelessWidget {
  const TribeApplication({super.key});

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
        return const MaterialApp(
          title: 'Tribes Crowdfunder',
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            Locale('en'),
          ],
          home: IntroPage(),
        );
      }),
    );
  }
}
