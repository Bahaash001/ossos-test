import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ossos_test/src/core/constant/enums.dart';
import 'package:ossos_test/src/features/home/domain/models/shape_color_model.dart';

class AnimationsController extends GetxController{
  
  List<ColoredShape> coloredShapes = [
    ColoredShape(Shape.RECTANGLE, Colors.blue[900]! , 0),
    ColoredShape(Shape.ROUNDEDRECTANGLE, Colors.blue , 30),
    ColoredShape(Shape.CIRCULAR, Colors.red , Get.width  )
  ];

  ColoredShape? _coloredShape;
  ColoredShape get coloredShape => _coloredShape!;

  void setColoredShpae(ColoredShape shape) {
    _coloredShape = shape;
    update();
  }

  @override
  void onInit() {
    _coloredShape = coloredShapes[0];
    super.onInit();
  }
}