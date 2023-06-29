
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ossos_test/src/core/constant/const_values.dart';
import 'package:ossos_test/src/core/widgets/custom_text.dart';
import 'package:ossos_test/src/features/home/domain/models/shape_color_model.dart';
import 'package:ossos_test/src/features/home/presentations/manager/home_controller.dart';

import '../manager/animations_controller.dart';
class ShapeWidget extends GetView<AnimationsController> {
  const ShapeWidget({super.key, required this.coloredShape});
  final ColoredShape coloredShape;


  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => controller.setColoredShpae(coloredShape),
        child: Container(
          width: Get.width * 0.25,
          height: Get.width * 0.25,
          decoration: BoxDecoration(
            color: coloredShape.color,
            borderRadius: BorderRadius.circular(coloredShape.radius),
          ),
        ));
  }
}
