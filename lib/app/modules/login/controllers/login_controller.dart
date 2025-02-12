import 'package:ricettami_app/core_packages.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void login() {
    //print('Email: ${emailController.text}');
    //print('Password: ${passwordController.text}');
  }

  void register() {
    //Get.toNamed(Routes.REGISTER);
  }

  void forgotPassword() {}
}
