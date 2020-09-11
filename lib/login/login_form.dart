import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_experiment/login/home_screen.dart';
import 'auth_controller.dart';

class LoginForm extends StatelessWidget {
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width - 100,
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'email'),
              onChanged: (value) {
                authController.updateEmail(value);
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
                decoration: InputDecoration(labelText: 'password'),
                onChanged: (value) {
                  authController.updatePass(value);
                }),
            Obx(() => Text(
                  authController.error.value,
                  style: TextStyle(color: Colors.red, fontSize: 12),
                )),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              child: Text("Login"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                final isSuccess = authController.login();
                if (isSuccess) Get.off(HomeScreen());
              },
            )
          ],
        ),
      ),
    );
  }
}
