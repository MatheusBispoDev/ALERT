import 'package:alert_app/application/ui/alert_app_ui_config.dart';
import 'package:alert_app/modules/login/login_module.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AlertAppUiConfig.title,
      debugShowCheckedModeBanner: false,
      theme: AlertAppUiConfig.theme,
      getPages: [
        ...LoginModule().routers,
      ],
    );
  }
}
