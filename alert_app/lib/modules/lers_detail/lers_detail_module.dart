import 'package:alert_app/application/modules/module.dart';
import 'package:alert_app/modules/lers_detail/lers_detail_bindings.dart';
import 'package:alert_app/modules/lers_detail/lers_detail_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class LersDetailModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/lers/detail',
      page: () => LersDetailPage(),
      binding: LersDetailBindings()
    ),
  ];
}
