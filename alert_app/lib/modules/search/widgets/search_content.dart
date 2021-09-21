import 'package:alert_app/modules/search/widgets/stretches_card.dart';
import 'package:alert_app/modules/search/widgets/tag_see_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchContent extends StatelessWidget {
  const SearchContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Alongamentos',
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
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StretchesCard(),
                StretchesCard(),
                StretchesCard(),
                StretchesCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
