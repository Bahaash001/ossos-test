import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ossos_test/src/core/constant/const_values.dart';
import 'package:ossos_test/src/core/widgets/custom_text.dart';

import '../manager/animations_controller.dart';
import '../manager/home_controller.dart';
import '../widgets/shape_widget.dart';

class AnimationsScreen extends GetView<AnimationsController> {
  const AnimationsScreen({super.key});
  static const String route = '/animations';

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(title: const Text("Animations")),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            vertical: Get.height * 0.1, horizontal: Get.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: CusSizedText(
              text: homeController.text,
              size: 25,
              color: Colors.black,
            )),
            SizedBox(height: Get.height * 0.04),
            Center(
              child: SizedBox.square(
                dimension: Get.width * 0.8,
                child: GetBuilder<AnimationsController>(
                    init: controller,
                    builder: (controller) => AnimatedContainer(
                        duration: defaultDurationF,
                        width: Get.width * 0.6,
                        height: Get.width * 0.6,
                        decoration: BoxDecoration(
                            color: controller.coloredShape.color,
                            borderRadius: BorderRadius.circular(
                                controller.coloredShape.radius)))),
              ),
            ),
            SizedBox(height: Get.height * 0.2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ShapeWidget(coloredShape: controller.coloredShapes[0]),
                ShapeWidget(coloredShape: controller.coloredShapes[1]),
                ShapeWidget(coloredShape: controller.coloredShapes[2]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
