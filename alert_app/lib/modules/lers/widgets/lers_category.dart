import 'package:alert_app/application/ui/theme_extensions.dart';
import 'package:alert_app/models/category_model.dart';
import 'package:flutter/material.dart';

class LersCategory extends StatelessWidget {
  LersCategory(
      {Key? key,
      required this.category,
      required this.icon,
      required this.onTap,
      bool selected = false})
      : _selected = selected,
        super(key: key);

  final CategoryModel category;
  final Function() onTap;
  final bool _selected;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Icon(
                  icon,
                  size: 40,
                  color: _selected ? context.colorOrange : context.colorGrey,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              category.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
