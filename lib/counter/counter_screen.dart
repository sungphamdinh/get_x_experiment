import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_controller.dart';

class CounterScreen extends StatelessWidget {
  final counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text("Clicks: ${counterController.count}")),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Go To Other"),
          onPressed: () => Get.to(OtherScreen()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => counterController.increment(),
      ),
    );
  }
}

class OtherScreen extends StatelessWidget {
  final CounterController counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other"),
      ),
      body: Center(
        child: Text("${counterController.count}"),
      ),
    );
  }
}
