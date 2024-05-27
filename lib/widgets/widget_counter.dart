import 'package:flutter/material.dart';
import 'package:lifecycle_widget/pages/other_pages.dart';

// ganti ke statefull
class WidgetCounter extends StatefulWidget {
  WidgetCounter({
    super.key,
    required this.counter,
  }) {
    // print('-------------------------');
    // print('constructor widget counter');
  }

  final int counter;

  @override
  State<WidgetCounter> createState() {
    // print('create state()');
    return _WidgetCounterState();
  }
}

class _WidgetCounterState extends State<WidgetCounter> {
  // // initstate adalah method yang pertama kali dijalankan ketika stateful widget dijalankan
  // @override
  // void initState() {
  //   super.initState();
  //   print('initState()');
  // }

  // // didchangeDependencies adalah method yang dijalankan ketika ada perubahan pada stateful widget
  // @override
  // void didChangeDependencies() {
  //   print('didChangeDependencies()');
  //   super.didChangeDependencies();
  // }

  // @override
  // void didUpdateWidget(covariant WidgetCounter oldWidget) {
  //   print('didUpdateWidget()');
  //   print('old counter: ${oldWidget.counter}');
  //   print('new counter: ${widget.counter}');
  //   super.didUpdateWidget(oldWidget);
  // }

  // @override
  // void deactivate() {
  //   print('deactivate()');
  //   super.deactivate();
  // }

  // @override
  // void dispose() {
  //   print('dispose()');
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // print('build()');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${widget.counter}',
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                OtherPages.routeName,
              ); //masih tersimpan di memori

              // Navigator.pushReplacementNamed(
              //   context,
              //   OtherPages.routeName,
              //   arguments: widget.counter,
              // );
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.blue,
              side: const BorderSide(color: Colors.blue, width: 2),
            ),
            child: const Text('Go to Other Page'),
          ),
        ],
      ),
    );
  }
}
