import 'package:get/get.dart';

class AuthController extends GetxController {
  String email = '';
  String password = '';
  final error = ''.obs;

  void updateEmail(String value) {
    email = value;
  }

  void updatePass(String value) {
    password = value;
  }

  bool login() {
    if (email.isEmpty || password.isEmpty) {
      error("Email or Password is empty!");
      return false;
    } else {
      error('');
      return true;
    }
  }
}
