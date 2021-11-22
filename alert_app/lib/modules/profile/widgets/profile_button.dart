import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    Key? key,
    required this.titleButton,
    required this.onPress,
  }) : super(key: key);

  final String titleButton;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.8,
      height: 60,
      child: ElevatedButton(
        child: Text(
          titleButton,
          style: TextStyle(
            color: const Color(0xFF334856),
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(color: Colors.grey.shade50),
          ),
        ),
      ),
    );
  }
}
