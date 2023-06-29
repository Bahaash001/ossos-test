// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ossos_test/src/features/home/manager/home_controller.dart';

// class AnimationScreen extends GetView<HomeController> {
//   const AnimationScreen({Key? key}) : super(key: key);
//   static const String routName = "/animation";

//   @override
//   Widget build(BuildContext context) { 
//     RxInt currentShapes = 0.obs;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Animation"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(children: [
//           SizedBox(
//             height: Get.height * 0.02,
//           ),
//           Obx(() => Center(child: Text(controller.input.value))),
//           SizedBox(
//             height: Get.height * 0.04,
//           ),
//           Obx(() {
//             return AnimatedContainer(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(currentShapes.value == 0
//                     ? 0
//                     : currentShapes.value == 1
//                         ? 30
//                         : 200),
//                 color: currentShapes.value == 0
//                     ? const Color.fromARGB(255, 43, 8, 158)
//                     : currentShapes.value == 1
//                         ? const Color.fromARGB(255, 85, 222, 247)
//                         : const Color.fromARGB(255, 224, 25, 28),
//               ),
//               width: 250,
//               height: 250,
//               duration: const Duration(milliseconds: 400),
//             );
//           }),
//           SizedBox(
//             height: Get.height * 0.36,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 8, left: 8),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     currentShapes.value = 0;
//                   },
//                   child: Container(
//                     width: 100,
//                     height: 100,
//                     color: const Color.fromARGB(255, 43, 8, 158),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     currentShapes.value = 1;
//                   },
//                   child: Container(
//                     width: 100,
//                     height: 100,
//                     decoration: BoxDecoration(
//                       color: const Color.fromARGB(255, 85, 222, 247),
//                       borderRadius: BorderRadius.circular(20.0),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     currentShapes.value = 2;
//                   },
//                   child: Container(
//                     width: 100,
//                     height: 100,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(200),
//                       color: const Color.fromARGB(255, 224, 25, 28),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ]),
//       ),
//     );
//   }
// }
