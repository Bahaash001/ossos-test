import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  String text = '';
  void setTheText({String? txt}) {
    text = txt ?? "";
    update();
  }
}
