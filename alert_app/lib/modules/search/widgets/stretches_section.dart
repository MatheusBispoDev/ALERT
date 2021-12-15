import 'package:alert_app/modules/search/widgets/tag_see_all.dart';
import 'package:flutter/material.dart';

class StretchesSection extends StatelessWidget {
  const StretchesSection({
    Key? key,
    required this.titleSection,
  }) : super(key: key);

  final String titleSection;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titleSection,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 120),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: TagSeeAll(),
        ),
      ],
    );
  }
}
