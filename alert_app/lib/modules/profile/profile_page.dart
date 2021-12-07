import 'package:alert_app/modules/profile/profile_controller.dart';
import 'package:alert_app/modules/profile/widgets/profile_button.dart';
import 'package:alert_app/modules/profile/widgets/profile_content.dart';
import 'package:alert_app/modules/profile/widgets/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
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
              SizedBox(height: Get.height * 0.02),
              ProfileButton(
                titleButton: 'Ficha Medica',
                onPress: () => Get.toNamed('/profile/medical'),
              ),
              SizedBox(height: Get.height * 0.02),
              ProfileButton(
                titleButton: 'Sair',
                onPress: () => controller.logout(),
              ),
              SizedBox(height: Get.height * 0.02),
              Text(
                'Version 0.1',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
