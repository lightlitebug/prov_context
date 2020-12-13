import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prov_context/riverpods/counter_riverpod.dart';

class CounterRiverpod2Page extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final counter = watch(counterRiverpod);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Riverpod 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${watch(counterRiverpod.state)}',
              style: TextStyle(fontSize: 48),
            ),
            RaisedButton(
              onPressed: counter.increment,
              child: Text(
                'ADD',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
