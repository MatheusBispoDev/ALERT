import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MedicalRecordItem extends StatelessWidget {
  const MedicalRecordItem({
    Key? key,
    required this.titleItem,
    required this.labelTaxt,
    this.keybordType = TextInputType.text,
  }) : super(key: key);

  final String titleItem;
  final String labelTaxt;
  final TextInputType? keybordType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleItem,
            style: TextStyle(
                color: Color(0xFF334856),
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          Container(
            width: Get.width * 0.4,
            child: TextField(
              keyboardType: keybordType,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Color(0xFFF5F5F5),
                labelText: labelTaxt,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black45,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
