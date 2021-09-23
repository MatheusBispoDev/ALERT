import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileButtonExit extends StatelessWidget {
  const ProfileButtonExit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.6,
      height: 60,
      child: ElevatedButton(
        child: Text(
          'Sair',
          style: TextStyle(
            color: const Color(0xFF334856),
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: () {},
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
