import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ossos_test/features/spalsh/manager/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});
  static const String route = '/';
  @override
  Widget build(BuildContext context) {
    controller;
    return Scaffold(
      body: Center(
        child: SizedBox.square(
          dimension: Get.height * 0.2,
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
