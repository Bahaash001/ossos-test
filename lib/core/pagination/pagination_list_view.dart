import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ossos_test/core/pagination/pagination_controller.dart';
import 'package:ossos_test/core/widgets/custom_text.dart';

import '../constant/strings.dart';

class PaginationListView extends StatelessWidget {
  const PaginationListView(
      {super.key,
      required this.controller,
      this.loaderLottie,
      this.noDataLottie,
      required this.itemBuilder});

  final PaginationController controller;
  final Widget Function(BuildContext, int) itemBuilder;
  final String? noDataLottie;
  final String? loaderLottie;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PaginationController>(
        init: controller,
        builder: (controller) {
          if (controller.shouldLoadTheMain) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (controller.hasError) {
            return Center(child: CusSizedText(text: controller.errorMessage));
          } else if (controller.data.isEmpty) {
            return Center(child: CusSizedText(text: "Nothing to show"));
          }
          return Column(
            children: [
              Expanded(
                  child: ListView.builder(
                controller: controller.scrollController,
                padding: const EdgeInsets.all(15),
                itemBuilder: itemBuilder,
                itemCount: controller.data.length,
              )),
              Visibility(
                  visible: controller.shouldLoadThePagingation &&
                      !controller.isFinish,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ))
            ],
          );
        });
  }
}
