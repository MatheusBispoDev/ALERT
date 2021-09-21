import 'package:flutter/material.dart';
    
class TagSeeAll extends StatelessWidget {
  const TagSeeAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Text(
            'Veja todos',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          Icon(
            Icons.navigate_next,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}