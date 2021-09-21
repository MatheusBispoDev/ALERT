import 'package:alert_app/modules/lers_detail/widgets/lers_detail_app_bar.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './lers_detail_controller.dart';

class LersDetailPage extends GetView<LersDetailController> {
  const LersDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildLersDetailtAppBar(),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: ListView(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    color: Color(0xFF87BCBF),
                    height: Get.height,
                    width: 50,
                  ),
                ),
                Text('Descrição\n ${controller.lers.value?.description}'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
