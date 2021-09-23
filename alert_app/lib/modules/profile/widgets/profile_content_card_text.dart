import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileContentCardText extends StatelessWidget {
  ProfileContentCardText({Key? key, required this.textCard}) : super(key: key);
  final String textCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: Get.width * 0.9,
      child: Card(
        elevation: 0,
        child: ListTile(
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              textCard,
              style: const TextStyle(
                color: const Color(0xFF334856),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          trailing: const Icon(
            Icons.navigate_next,
            size: 32,
          ),
        ),
      ),
    );
  }
}
