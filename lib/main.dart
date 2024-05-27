import 'package:flutter/material.dart';
import 'package:lifecycle_widget/pages/counter_pages.dart';
import 'package:lifecycle_widget/pages/other_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
      routes: {
        '/counter': (context) => CounterPage(),
        OtherPages.routeName: (context) => const OtherPages(),
      },
    );
  }
}
