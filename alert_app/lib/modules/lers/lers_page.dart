import 'package:alert_app/modules/lers/widgets/lers_content.dart';
import 'package:alert_app/modules/lers/widgets/lers_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LersPage extends StatelessWidget {
  const LersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            LersHeader(),
            LersContent(),
          ],
        ),
      ),
    );
  }
}
