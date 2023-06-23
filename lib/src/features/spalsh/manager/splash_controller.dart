import 'package:get/get.dart';
import 'package:ossos_test/src/core/constant/const_values.dart';
import 'package:ossos_test/src/features/home/pages/home_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(defaultDurationVS, () {
      Get.offNamed(HomeScreen.route);
    });
    super.onInit();
  }
}
