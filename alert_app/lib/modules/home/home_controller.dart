import 'package:get/get.dart';

class HomeController extends GetxController {
  // Key criada para o Navigator 2.0
  static const NAVIGATOR_KEY = 1;

  final _pages = ['/lers', '/search', '/diary', '/timer', '/profile'];
  final _pagesIndex = 0.obs;

  int get pageIndex => _pagesIndex.value;

  void goToPage(int page) {
    if (_pagesIndex.value != page) {
      _pagesIndex(page);
      Get.offNamed(_pages[page], id: NAVIGATOR_KEY);
    }
  }
}
