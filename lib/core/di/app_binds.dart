import 'package:get/get.dart';
import 'package:ossos_test/features/home/manager/animations_controller.dart';
import 'package:ossos_test/features/home/manager/home_controller.dart';
import 'package:ossos_test/features/spalsh/manager/splash_controller.dart';

class AppBinds extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<SplashController>(() => SplashController());
    // Get.put<HomeController>(HomeController(), permanent: true);
    // Get.lazyPut<AnimationsController>(() => AnimationsController() , fenix: true);
  }
}
