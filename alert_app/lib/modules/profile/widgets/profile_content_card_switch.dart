import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileContentCardSwitch extends StatelessWidget {
  ProfileContentCardSwitch({Key? key, required this.textCard})
      : super(key: key);

  final valueCheck = false.obs;
  final String textCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(textCard),
      height: 70,
      width: Get.width * 0.9,
      child: Card(
        elevation: 0,
        child: ListTile(
          title: Text(
            textCard,
            style: TextStyle(
                color: const Color(0xFF334856), fontWeight: FontWeight.bold),
          ),
          trailing: Obx(() {
            return Transform.scale(
              scale: 1.9,
              child: Switch(
                value: valueCheck.value,
                activeTrackColor: const Color(0xFF87BCBF),
                activeColor: Colors.white,
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: const Color(0xFF87BCBF),
                onChanged: (value) {
                  valueCheck.value = value;
                },
              ),
            );
          }),
        ),
      ),
    );
  }
}
