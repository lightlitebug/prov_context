import 'package:flutter/material.dart';
import 'package:prov_context/providers/counter_provider.dart';
import 'package:provider/provider.dart';

import 'counter_prov2_page.dart';

var counterProvider;

class CounterProv1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterProvider>(
      create: (context) {
        counterProvider = CounterProvider();
        return counterProvider;
      },
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Provider'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  context.watch<CounterProvider>().counter.toString(),
                  style: TextStyle(fontSize: 48),
                ),
                SizedBox(height: 10.0),
                RaisedButton(
                  child: Text(
                    'Increment',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    context.read<CounterProvider>().increment();
                  },
                ),
                SizedBox(height: 10.0),
                MyChild(),
                SizedBox(height: 10.0),
                RaisedButton(
                  child: Text(
                    'Go to Counter Provider 2',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ChangeNotifierProvider<CounterProvider>.value(
                            value: counterProvider,
                            child: CounterProv2Page(),
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class MyChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      height: 120,
      child: Center(
        child: Text(
          context.watch<CounterProvider>().counter.toString(),
          style: TextStyle(
            fontSize: 48.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
