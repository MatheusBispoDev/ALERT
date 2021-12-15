import 'package:alert_app/application/bindings/application_bindings.dart';
import 'package:alert_app/application/ui/alert_app_ui_config.dart';
import 'package:alert_app/modules/home/home_module.dart';
import 'package:alert_app/modules/lers_detail/lers_detail_module.dart';
import 'package:alert_app/modules/login/login_module.dart';
import 'package:alert_app/modules/medical_record/medical_record_module.dart';
import 'package:alert_app/modules/splash/splash_module.dart';
import 'package:alert_app/modules/stretches_detail/stretches_module.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  // Inicializa coisas antes de executar o app
  WidgetsFlutterBinding.ensureInitialized();
  // Inicializa o Firebase
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ApplicationBindings(),
      title: AlertAppUiConfig.title,
      debugShowCheckedModeBanner: false,
      getPages: [
        ...SplashModule().routers,
        ...LoginModule().routers,
        ...HomeModule().routers,
        ...LersDetailModule().routers,
        ...MedicalRecordModule().routers,
        ...StretchesDetailModule().routers,
      ],
    );
  }
}
