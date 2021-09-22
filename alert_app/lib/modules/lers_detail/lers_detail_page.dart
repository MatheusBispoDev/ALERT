import 'package:alert_app/application/ui/theme_extensions.dart';
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
                Padding(
                  padding: const EdgeInsets.only(left: 70, right: 40),
                  child: Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      width: Get.width * 0.7,
                      height: 60,
                      child: ElevatedButton(
                        child: Text(
                          'Alongamentos',
                          style: context.descriptionStyleText(
                              textColor: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
