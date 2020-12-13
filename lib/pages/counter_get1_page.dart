import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prov_context/controllers/counter_controller.dart';

import 'counter_get2_page.dart';

class CounterGet1Page extends StatelessWidget {
  final counterController = Get.put<CounterController>(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Prov1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                counterController.counter.value.toString(),
                style: TextStyle(fontSize: 48.0),
              ),
            ),
            SizedBox(height: 10.0),
            RaisedButton(
              child: Text(
                'Increment',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () => counterController.counter.value++,
            ),
            SizedBox(height: 10.0),
            MyChild(),
            SizedBox(height: 10.0),
            RaisedButton(
              child: Text(
                'Go to Counter Get2',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return CounterGet2Page();
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

class MyChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      height: 120,
      child: Center(
        child: Obx(
          () => Text(
            CounterController.to.counter.toString(),
            style: TextStyle(
              fontSize: 48.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
