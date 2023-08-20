import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tribes_crowdfunding_interview_project/application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const TribeApplication());
}
