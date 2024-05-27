import 'package:flutter/material.dart';
import 'package:lifecycle_widget/widgets/widget_counter.dart';

class CounterPage extends StatefulWidget {
  CounterPage({super.key}) {
    print('========================');
    print('constructor counter page');
  }

  @override
  State<CounterPage> createState() {
    print('create state()'); // dicek di widget_counter.dart
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  // buat disimpan habis repalcemanpush
  // @override
  // void initState() {
  //   super.initState();
  //   int finalNumber = ModalRoute.of(context)!.settings.arguments as int;
  //   counter = finalNumber;
  // }

  // implement didChangeDependencies
  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   final int? finalNumber = ModalRoute.of(context)!.settings.arguments as int?;
  //   if (finalNumber != null) {
  //     print('nilai dikembalikan ke state akhir');
  //     counter = finalNumber;
  //   }
  // }

  // lifecycle widget method (buat check cut ke widget_counter.dart)
  // initstate adalah method yang pertama kali dijalankan ketika stateful widget dijalankan
  @override
  void initState() {
    super.initState();
    print('initState()');
  }

  // didchangeDependencies adalah method yang dijalankan ketika ada perubahan pada stateful widget
  @override
  void didChangeDependencies() {
    print('didChangeDependencies()');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant CounterPage oldWidget) {
    print('didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('deactivate()');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose()');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // print('build()');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: WidgetCounter(counter: counter),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
