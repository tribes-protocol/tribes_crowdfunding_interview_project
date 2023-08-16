import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/goal/goal_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/intro/intro_page.dart';
import 'package:tribes_crowdfunding_interview_project/router.dart';
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
        return ProviderScope(
          child: GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: MaterialApp.router(
              routerConfig: router,
              title: 'Tribes Crowdfunder',
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('en'),
              ],
              theme: ThemeData(
                scaffoldBackgroundColor: context.colors.baseContent,
                colorScheme: Theme.of(context).colorScheme.copyWith(
                      primary: context.colors.baseContent,
                    ),
                appBarTheme: Theme.of(context).appBarTheme.copyWith(
                      elevation: 0,
                      color: context.colors.baseContent,
                      iconTheme: Theme.of(context).iconTheme.copyWith(
                            color: context.colors.labelLight2,
                          ),
                    ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
