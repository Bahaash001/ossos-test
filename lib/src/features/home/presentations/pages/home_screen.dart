import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ossos_test/src/core/widgets/custom_text.dart';
import 'package:ossos_test/src/core/widgets/elevated_button.dart';
import 'package:ossos_test/src/features/pokemons/presentation/pages/pokemons_screen.dart';

import '../manager/home_controller.dart';
import 'animations_screen.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});
  static const String route = '/home';
  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController =
        TextEditingController(text: "");

    return Scaffold(
        appBar: AppBar(title: const Text("Home")),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(Get.width * 0.03),
            child: Column(
              children: [
                TextFormField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      label: CusSizedText(
                        text: "Enter your name",
                        color: Colors.grey[850],
                      )),
                  onChanged: (value) => controller.setTheText(txt: value),
                ),
                SizedBox(height: Get.height * 0.05),
                Center(
                  child: GetBuilder<HomeController>(
                    init: controller,
                    builder: (controller) => CusSizedText(
                      text: textEditingController.text,
                      color: Colors.black,
                      size: 19,
                      weight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.red[800],
                    ),
                    InkWell(
                      onTap: () {
                        textEditingController.text = '';
                        controller.setTheText();
                      },
                      child: CusSizedText(
                        text: "Clear the text",
                        color: Colors.red[800],
                      ),
                    )
                  ],
                ),
                SizedBox(height: Get.height * 0.05),
                CustomLongElevatedButton(
                    color: Colors.blue[900]!,
                    title: "Go to page 1",
                    action: () {
                      Get.toNamed(AnimationsScreen.route);
                    }),
                SizedBox(height: Get.height * 0.05),
                CustomLongElevatedButton(
                    color: Colors.blue,
                    title: "Go to page 2",
                    action: () {
                      Get.toNamed(PokemonsScreen.route);
                    })
              ],
            )));
  }
}
