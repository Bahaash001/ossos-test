import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text.dart';

 
class CustomLongElevatedButton extends StatelessWidget {
  const CustomLongElevatedButton({super.key, required this. color,
  required this. title,
  required this.action,});
 final Color color;
 final String title;
 final VoidCallback action;
 
  @override
  Widget build(BuildContext context) {
     ButtonStyle elevatedButton = ElevatedButton.styleFrom(
    backgroundColor: color,
    elevation: 5,
    shape: RoundedRectangleBorder(
        side: BorderSide(color: color),
        borderRadius: BorderRadius.circular(10)),
  );
    return ElevatedButton(
      style: elevatedButton,
      onPressed: action,
      child: SizedBox(
        width: Get.width * 0.7,
        height: Get.height*0.07,
        child: Center(
          child: CusSizedText(
              text: title,
              color: Colors.white,
              size: 18,
              weight: FontWeight.w500),
        ),
      ),
    );
  }
} 