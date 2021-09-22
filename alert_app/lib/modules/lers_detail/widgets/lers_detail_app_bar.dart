import 'package:alert_app/application/ui/alert_app_icons_icons.dart';
import 'package:alert_app/models/lers_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar buildLersDetailtAppBar({required LersModel? lers}) {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          getMapIcon[lers?.categorys[0]],
          size: 55,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Mãos'),
              Padding(
                padding: const EdgeInsets.only(top: 4, bottom: 4),
                child: Container(
                  alignment: Alignment.center,
                  width: 55,
                  height: 1,
                  color: Colors.white,
                ),
              ),
              Text(
                'Síndrome do túnel do Carpo',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    backgroundColor: Color(0xFF858585),
    leading: IconButton(
      icon: Icon(Icons.navigate_before),
      iconSize: 36,
      onPressed: () => Get.offNamed('/home'),
    ),
    toolbarHeight: Get.height * 0.12,
  );
}
