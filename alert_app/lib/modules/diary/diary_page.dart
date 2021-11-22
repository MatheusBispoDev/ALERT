import 'package:alert_app/application/ui/widgets/appbar.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './diary_controller.dart';

class DiaryPage extends GetView<DiaryController> {
  const DiaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.labelMounthActived();
    return Scaffold(
      appBar: buildAppBar(title: 'Diário'),
      body: SizedBox(
        height: Get.size.height,
        width: Get.size.width,
        child: ListView(
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
            Container(
              height: Get.size.height * 0.07,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2.0),
              ),
              child: Obx(() {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: LabelDiary(
                        title: 'Semanal',
                        icon: Icons.menu,
                        active: controller.labelWeekActived.value,
                        onPress: () => controller.labelWeekActived(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: LabelDiary(
                        title: 'Mensal',
                        icon: Icons.apps_rounded,
                        active: controller.labelMounthActived.value,
                        onPress: () => controller.labelMounthActived(),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class LabelDiary extends StatelessWidget {
  const LabelDiary(
      {Key? key,
      required this.onPress,
      required this.active,
      required this.title,
      required this.icon})
      : super(key: key);

  final Function() onPress;
  final bool active;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: active ? Color(0xFFD97D54) : Color(0xFF6E8CA0),
            size: 32,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              title,
              style: TextStyle(
                color: active ? Color(0xFFD97D54) : Color(0xFF6E8CA0),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
