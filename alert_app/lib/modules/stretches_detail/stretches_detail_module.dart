import 'package:alert_app/application/modules/module.dart';
import 'package:alert_app/modules/stretches_detail/stretches_detail_bindings.dart';
import 'package:alert_app/modules/stretches_detail/stretches_detail_page.dart';
import 'package:get/get.dart';

class StretchesDetailModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/search/detail',
      page: () => StrechesDetailPage(),
      binding: StretchesDetailBindings(),
    ),
  ];
}
