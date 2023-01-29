import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/fund_projects/start_funding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tribes Crowdfunder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartFundProjectPage(),
    );
  }
}
