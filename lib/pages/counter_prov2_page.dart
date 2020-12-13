import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prov_context/providers/counter_provider.dart';

class CounterProv2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Prov2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.watch<CounterProvider>().counter.toString(),
              style: TextStyle(fontSize: 48),
            ),
            RaisedButton(
              onPressed: () {
                context.read<CounterProvider>().increment();
              },
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
