import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ossos_test/core/constant/enums.dart';
import 'package:ossos_test/features/home/domain/models/shape_color_model.dart';

class AnimationsController extends GetxController{
  
  List<ColoredShape> coloredShapes = [
    ColoredShape(Shape.RECTANGLE, Colors.blue[900]!),
    ColoredShape(Shape.ROUNDEDRECTANGLE, Colors.blue),
    ColoredShape(Shape.CIRCULAR, Colors.red)
  ];

  ColoredShape? _coloredShape;
  ColoredShape get coloredShape => _coloredShape!;

  bool getIsCircleShape({Shape? shape}) =>
      (shape ?? coloredShape.shape) == Shape.CIRCULAR;
  bool getIsRoundedRectShape({Shape? shape}) =>
      (shape ?? coloredShape.shape) == Shape.ROUNDEDRECTANGLE;

  double getBorderRaduis() => getIsCircleShape()
      ? Get.width * 0.5
      : getIsRoundedRectShape()
          ? 60
          : 0;

  void setColoredShpae(ColoredShape shape) {
    _coloredShape = shape;
    update();
  }

  @override
  void onInit() {
    _coloredShape = getShapeAndColorModelBasedOnSlectedShape(Shape.RECTANGLE);
    super.onInit();
  }

  ColoredShape getShapeAndColorModelBasedOnSlectedShape(Shape shape) {
    switch (shape) {
      case Shape.CIRCULAR:
        return coloredShapes[2];
      case Shape.ROUNDEDRECTANGLE:
        return coloredShapes[1];
      case Shape.RECTANGLE:
        return coloredShapes[0];
      default:
        return coloredShapes[0];
    }
  }
}