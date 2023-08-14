import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension BuildContextLocalisationExt on BuildContext {
  AppLocalizations get localisation => AppLocalizations.of(this)!;
}
