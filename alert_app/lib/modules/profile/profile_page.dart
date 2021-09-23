import 'package:alert_app/application/ui/theme_extensions.dart';
import 'package:alert_app/modules/profile/widgets/profile_button_exit.dart';
import 'package:alert_app/modules/profile/widgets/profile_content.dart';
import 'package:alert_app/modules/profile/widgets/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Get.height * 0.10),
            ProfileHeader(),
            SizedBox(height: Get.height * 0.02),
            ProfileContent(),
            ProfileButtonExit(),
            SizedBox(height: Get.height * 0.02),
            Text(
              'Version 0.1',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
