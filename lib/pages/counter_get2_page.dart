import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prov_context/controllers/counter_controller.dart';

class CounterGet2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Get2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                CounterController.to.counter.toString(),
                style: TextStyle(fontSize: 48),
              ),
            ),
            RaisedButton(
              onPressed: () => CounterController.to.counter.value++,
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
