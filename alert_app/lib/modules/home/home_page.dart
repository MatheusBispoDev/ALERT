import 'package:alert_app/modules/diary/diary_page.dart';
import 'package:alert_app/modules/home/home_controller.dart';
import 'package:alert_app/modules/lers/lers_page.dart';
import 'package:alert_app/modules/lers/lerts_bindings.dart';
import 'package:alert_app/modules/profile/profile_bindings.dart';
import 'package:alert_app/modules/profile/profile_page.dart';
import 'package:alert_app/modules/search/search_bindings.dart';
import 'package:alert_app/modules/search/search_page.dart';
import 'package:alert_app/modules/timer/timer_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:alert_app/application/ui/theme_extensions.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          selectedItemColor: context.colorOrange,
          unselectedItemColor: context.colorGrey,
          currentIndex: controller.pageIndex,
          iconSize: 24,
          onTap: controller.goToPage,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'LERS',
              backgroundColor: context.colorBlue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Procurar',
              backgroundColor: context.colorBlue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dialer_sip),
              label: 'Diário',
              backgroundColor: context.colorBlue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.timer),
              label: 'Timer',
              backgroundColor: context.colorBlue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
              backgroundColor: context.colorBlue,
            ),
          ],
        );
      }),
      body: Navigator(
        key: Get.nestedKey(HomeController.NAVIGATOR_KEY),
        initialRoute: '/lers',
        onGenerateRoute: (settings) {
          if (settings.name == '/lers') {
            return GetPageRoute(
              settings: settings,
              page: () => LersPage(),
              binding: LersBindings(),
            );
          }
          if (settings.name == '/search') {
            return GetPageRoute(
              settings: settings,
              page: () => SearchPage(),
              binding: SearchBindings(),
            );
          }
          if (settings.name == '/diary') {
            return GetPageRoute(
              settings: settings,
              page: () => DiaryPage(),
            );
          }
          if (settings.name == '/timer') {
            return GetPageRoute(
              settings: settings,
              page: () => TimerPage(),
            );
          }
          if (settings.name == '/profile') {
            return GetPageRoute(
              settings: settings,
              page: () => ProfilePage(),
              binding: ProfileBindings(),
            );
          }
          return null;
        },
      ),
    );
  }
}
