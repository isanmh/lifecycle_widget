import 'package:flutter/material.dart';

class OtherPages extends StatelessWidget {
  const OtherPages({super.key});

  static const String routeName = '/other';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Pages'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              '/counter',
              // arguments: ModalRoute.of(context)!.settings.arguments as int,
            );
          },
          child: const Text('Back to Counter Page'),
        ),
      ),
    );
  }
}
