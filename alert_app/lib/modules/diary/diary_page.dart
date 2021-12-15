import 'package:alert_app/application/ui/widgets/appbar.dart';
import 'package:alert_app/modules/diary/widgets/stretches_list.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './diary_controller.dart';
import 'widgets/label_diary.dart';

class DiaryPage extends GetView<DiaryController> {
  const DiaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Diário'),
      body: SizedBox(
        height: Get.size.height,
        width: Get.size.width,
        child: Column(
          children: [
            Container(
              height: Get.size.height * 0.08,
              color: Color(0xFF334856),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Setembro 2021',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: Get.height * 0.001),
            Stack(
              children: [
                Container(
                  height: Get.size.height * 0.3,
                  color: Color(0xFF334856),
                ),
              ],
            ),
            Obx(() {
              return Container(
                height: Get.size.height * 0.07,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: LabelDiary(
                        title: 'Semanal',
                        icon: Icons.menu,
                        active: controller.labelWeekActived.value,
                        onPress: () => controller.weekActived(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: LabelDiary(
                        title: 'Mensal',
                        icon: Icons.apps_rounded,
                        active: controller.labelMounthActived.value,
                        onPress: () => controller.monthActived(),
                      ),
                    ),
                  ],
                ),
              );
            }),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView(
                children: [
                  StretchesList(
                    day: 'Segunda',
                    mounth: '13 de Dezembro',
                  ),
                  StretchesList(
                    day: 'Terça',
                    mounth: '14 de Dezembro',
                  ),
                  StretchesList(
                    day: 'Quarta',
                    mounth: '15 de Dezembro',
                  ),
                  StretchesList(
                    day: 'Quinta',
                    mounth: '16 de Dezembro',
                  ),
                  StretchesList(
                    day: 'Sexta',
                    mounth: '17 de Dezembro',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
