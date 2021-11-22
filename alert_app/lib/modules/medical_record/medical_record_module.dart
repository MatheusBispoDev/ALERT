import 'package:alert_app/application/modules/module.dart';
import 'package:alert_app/modules/medical_record/medical_record_bindings.dart';
import 'package:alert_app/modules/medical_record/medical_record_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class MedicalRecordModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/profile/medical',
      page: () => MedicalRecordPage(),
      binding: MedicalRecordBindings(),
    ),
  ];
}
