import 'package:alert_app/modules/lers/lers_controller.dart';
import 'package:alert_app/modules/lers/widgets/card_lers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LersContent extends GetView<LersController> {
  const LersContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: controller.lers.length,
          itemBuilder: (context, index) =>
              CardLers(ler: controller.lers[index]),
        ),
      );
    });
  }
}
