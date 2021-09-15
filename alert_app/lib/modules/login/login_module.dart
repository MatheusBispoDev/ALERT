import 'package:alert_app/application/modules/module.dart';
import 'package:alert_app/modules/login/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class LoginModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => LoginPage(),
    )
  ];
}
