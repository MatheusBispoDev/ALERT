import 'package:alert_app/application/modules/module.dart';
import 'package:alert_app/modules/splash/splash_bindings.dart';
import 'package:alert_app/modules/splash/splash_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class SplashModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => SplashPage(),
      binding: SplashBindings(),
    )
  ];
}
