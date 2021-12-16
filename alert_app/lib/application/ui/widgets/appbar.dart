import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar buildAppBar({required String title, double fontSize = 28}) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(
        color: Color(0xFF334856),
        fontSize: fontSize,
        fontWeight: FontWeight.w800,
      ),
    ),
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(
        Icons.navigate_before,
        color: Color(0xFF334856),
      ),
      iconSize: 32,
      onPressed: () => Get.back(),
    ),
    toolbarHeight: Get.height * 0.12,
  );
}
