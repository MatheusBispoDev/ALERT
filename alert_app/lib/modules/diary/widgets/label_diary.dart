import 'package:flutter/material.dart';

class LabelDiary extends StatelessWidget {
  const LabelDiary(
      {Key? key,
      required this.onPress,
      required this.active,
      required this.title,
      required this.icon})
      : super(key: key);

  final Function() onPress;
  final bool active;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: active ? Color(0xFFD97D54) : Color(0xFF6E8CA0),
            size: 32,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              title,
              style: TextStyle(
                color: active ? Color(0xFFD97D54) : Color(0xFF6E8CA0),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
