import 'package:get/get.dart';

import '../../features/home/presentations/manager/animations_controller.dart';
import '../../features/home/presentations/manager/home_controller.dart';
import '../../features/spalsh/manager/splash_controller.dart';

void initBinds() {
  Get.lazyPut<SplashController>(() => SplashController());
  Get.put<HomeController>(HomeController(), permanent: true);
  Get.lazyPut<AnimationsController>(() => AnimationsController(), fenix: true);
  

}
