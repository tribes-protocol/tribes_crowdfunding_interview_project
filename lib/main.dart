import 'package:flutter/material.dart';

import 'styles/spacing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tribes Crowdfunder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Material(
        child: Center(
          child: InkWell(
            onTap: () {
              // start a crowdfund here
            },
            child: Container(
                padding: const EdgeInsets.all(Spacing.double),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(Spacing.standard),
                ),
                child: const Text(
                  'Start a crowdfund',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
