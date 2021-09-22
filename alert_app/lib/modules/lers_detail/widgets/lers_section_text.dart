import 'package:flutter/material.dart';

class LersSectionText extends StatelessWidget {
  const LersSectionText({Key? key, required this.title, required this.text}) : super(key: key);

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      childrenPadding: const EdgeInsets.only(left: 60),
      leading: Icon(Icons.event),
      title: Text(title),
      children: <Widget>[
        Text(
          text,
          style: TextStyle(fontSize: 14),
          overflow: TextOverflow.clip,
          textScaleFactor: 1.3,
        ),
      ],
    );
  }
}
