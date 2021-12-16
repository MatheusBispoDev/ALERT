import 'package:alert_app/application/ui/alert_app_icons_icons.dart';
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
              width: Get.size.width,
              color: Color(0xFF334856),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Setembro 2021',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Get.height * 0.001),
            Container(
              height: Get.size.height * 0.3,
              color: Color(0xFF334856),
              child: Stack(
                children: [
                  Positioned(
                    bottom: Get.size.height * 0.17,
                    left: Get.size.width * 0.35,
                    child: Text(
                      '10',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 50,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: Get.size.height * 0.12,
                    left: Get.size.width * 0.23,
                    child: Text(
                      'Alongamentos',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: Get.size.height * 0.07,
                    left: Get.size.width * 0.5,
                    child: Text(
                      'Em 7 dias',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
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
                    times: [
                      '10:15h',
                      '12:35h',
                      '15:00h',
                    ],
                    qntList: 3,
                    icons: [
                      AlertAppIcons.hand,
                      AlertAppIcons.player_shot,
                      AlertAppIcons.player_pain,
                      AlertAppIcons.aura,
                    ],
                  ),
                  StretchesList(
                    day: 'Terça',
                    mounth: '14 de Dezembro',
                    times: [
                      '10:15h',
                      '12:00h',
                      '15:30h',
                      '18:50h',
                    ],
                    qntList: 4,
                    icons: [
                      AlertAppIcons.hand,
                      AlertAppIcons.hand,
                      AlertAppIcons.player_shot,
                      AlertAppIcons.player_pain,
                    ],
                  ),
                  StretchesList(
                    day: 'Quarta',
                    mounth: '15 de Dezembro',
                    times: [
                      '18:20h',
                      '21:10h',
                    ],
                    qntList: 2,
                    icons: [
                      AlertAppIcons.aura,
                      AlertAppIcons.aura,
                    ],
                  ),
                  StretchesList(
                    day: 'Quinta',
                    mounth: '16 de Dezembro',
                    times: [
                      '17:45h',
                    ],
                    qntList: 1,
                    icons: [
                      AlertAppIcons.player_shot,
                    ],
                  ),
                  StretchesList(
                    day: 'Sexta',
                    mounth: '17 de Dezembro',
                    times: [],
                    qntList: 0,
                    icons: [],
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
