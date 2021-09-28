import 'package:alert_app/application/ui/alert_app_icons_icons.dart';
import 'package:alert_app/modules/lers/lers_controller.dart';
import 'package:alert_app/modules/lers/widgets/lers_category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LersHeader extends GetView<LersController> {
  const LersHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.width * 0.6,
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: new Color(0xFF334856),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(
            color: Colors.white,
            thickness: 3,
            indent: 160,
            endIndent: 160,
          ),
          SizedBox(height: 20),
          Text('Selecione a categoria',
              style: TextStyle(color: Colors.white, fontSize: 16)),
          SizedBox(height: 20),
          Text('Filtre as LERS por:',
              style: TextStyle(color: Colors.white, fontSize: 14)),
          SizedBox(height: 30),
          Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: controller.categorys
                  .map(
                    (category) => LersCategory(
                      category: category,
                      icon: getMapIcon[category.id],
                      selected:
                          controller.categorySelected.value?.id == category.id,
                      onTap: () => controller.filterByCategory(category),
                    ),
                  )
                  .toList(),
            );
          }),
        ],
      ),
    );
  }
}

