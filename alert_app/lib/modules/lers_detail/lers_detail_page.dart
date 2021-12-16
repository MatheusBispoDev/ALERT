import 'package:alert_app/modules/lers_detail/widgets/lers_detail_app_bar.dart';
import 'package:alert_app/modules/lers_detail/widgets/lers_section_text.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './lers_detail_controller.dart';

class LersDetailPage extends GetView<LersDetailController> {
  LersDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildLersDetailtAppBar(lers: controller.lers.value),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                LersSectionText(
                    title: 'Descrição',
                    text: controller.lers.value?.description ?? ''),
                LersSectionText(
                    title: 'Sintomas',
                    text: controller.lers.value?.symptoms ?? ''),
                LersSectionText(
                    title: 'Tratamentos',
                    text: controller.lers.value?.treatments ?? ''),
                LersSectionText(
                    title: 'Prevenção',
                    text: controller.lers.value?.prevention ?? ''),
                SizedBox(height: 40),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                color: Color(0xFF87BCBF),
                height: Get.height,
                width: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
