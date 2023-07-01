import 'package:get/get.dart';
import 'package:ossos_test/src/core/constant/const_values.dart';

import '../../home/presentations/pages/home_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(defaultDurationVS, () {
      Get.offNamed(HomeScreen.route);
    });
    super.onInit();
  }
}
