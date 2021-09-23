import 'dart:io';
import 'package:alert_app/modules/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileHeader extends GetView<ProfileController> {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final imageFile = controller.image.value ?? '';
      return Stack(
        children: [
          Container(
            height: 160,
            width: 160,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: imageFile != ''
                  ? Image.file(
                      File(imageFile),
                      fit: BoxFit.fill,
                      alignment: Alignment.center,
                    )
                  : Image.asset(
                      'assets/images/profile_icon.png',
                      fit: BoxFit.fill,
                      alignment: Alignment.center,
                    ),
            ),
          ),
          Positioned(
            left: 90,
            bottom: 5,
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                icon: Icon(Icons.add),
                iconSize: 36,
                onPressed: () {
                  controller.getImageGallery();
                },
              ),
            ),
          ),
        ],
      );
    });
  }
}
