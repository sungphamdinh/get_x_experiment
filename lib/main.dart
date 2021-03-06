import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_experiment/sandbox_screen.dart';

import 'cat_store/screens/home_screen.dart';

void main() {
  runApp(GetMaterialApp(
    home: App(),
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return CounterScreen();
    // return CatScreen();
    // return LoginScreen();
    return SandBoxScreen();
  }
}
