import 'package:alert_app/application/ui/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StretchesList extends StatelessWidget {
  const StretchesList({
    Key? key,
    required this.day,
    required this.mounth,
    required this.qntList,
    required this.icons,
    required this.times,
  }) : super(key: key);

  final String day;
  final String mounth;
  final int qntList;
  final List<IconData> icons;
  final List<String> times;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mounth,
              style: TextStyle(
                color: Color(0xFF6E8CA0),
              ),
            ),
            Text(
              day,
              style: TextStyle(
                color: Color(0xFF1B1C20),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: Get.size.width,
              height: Get.size.height * 0.15,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: qntList,
                itemBuilder: (context, index) => StretchesCard(
                  icon: icons[index],
                  time: times[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StretchesCard extends StatelessWidget {
  const StretchesCard({
    Key? key,
    required this.time,
    required this.icon,
  }) : super(key: key);

  final String time;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: Get.size.height * 0.08,
              width: Get.size.width * 0.16,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Icon(
                  icon,
                  size: 28,
                  color: context.colorOrange,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              time,
              style: TextStyle(
                color: Color(0xFF1B1C20),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
