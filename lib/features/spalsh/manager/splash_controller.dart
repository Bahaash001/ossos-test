import 'package:get/get.dart';
import 'package:ossos_test/core/constant/const_values.dart';
import 'package:ossos_test/features/home/pages/home_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(defaultDurationVS, () {
      Get.offNamed(HomeScreen.route);
    });
    super.onInit();
  }
}
