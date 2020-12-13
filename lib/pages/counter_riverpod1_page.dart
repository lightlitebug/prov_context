import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prov_context/riverpods/counter_riverpod.dart';

import 'counter_riverpod2_page.dart';

class CounterRiverpod1Page extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final counter = watch(counterRiverpod);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Riverpod 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${watch(counterRiverpod.state)}',
              style: TextStyle(fontSize: 48),
            ),
            SizedBox(height: 10.0),
            RaisedButton(
              child: Text(
                'Increment',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                counter.increment();
              },
            ),
            SizedBox(height: 10.0),
            MyChild(),
            SizedBox(height: 10.0),
            RaisedButton(
              child: Text(
                'Go to Counter Riverpod 2',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return CounterRiverpod2Page();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyChild extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      height: 120,
      child: Center(
        child: Text(
          '${watch(counterRiverpod.state)}',
          style: TextStyle(
            fontSize: 48.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
