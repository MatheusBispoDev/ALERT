import 'package:alert_app/application/ui/loader/loader_mixin.dart';
import 'package:alert_app/application/ui/messages/messages_mixin.dart';
import 'package:alert_app/models/category_model.dart';
import 'package:alert_app/models/lers_model.dart';
import 'package:alert_app/services/lers/lers_service.dart';
import 'package:get/get.dart';

class LersController extends GetxController with LoaderMixin, MessagesMixin {
  final LersService _lersService;
  final categorys = <CategoryModel>[].obs;
  final categorySelected = Rxn<CategoryModel>();
  final lers = <LersModel>[].obs;
  var _lersOriginal = <LersModel>[];

  var _loading = false.obs;
  var _message = Rxn<MessageModel>();

  LersController({required LersService lersService})
      : _lersService = lersService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(_loading);
    messageListener(_message);
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    _loading(true);
    await _getCategorys();
    await _getLers();
    _loading(false);
  }

  Future<void> _getCategorys() async {
    try {
      final categorysData = await _lersService.getCategorys();
      categorys.assignAll(categorysData);
    } catch (e, s) {
      print(e);
      print(s);
      _loading(false);
      _message(MessageModel.error(
          title: 'Error', message: 'Error ao buscar categorias'));
    }
  }

  Future<void> _getLers() async {
    try {
      var lersData = await _lersService.getLers();

      lers.assignAll(lersData);

      _lersOriginal = lersData;
    } catch (e, s) {
      print('Controller: [$e]');
      print('Controller: [$s]');
      _loading(false);
      _message(
          MessageModel.error(title: 'Error', message: 'Error ao buscar lers'));
    }
  }

  void filterByCategory(CategoryModel? categoryFilter) {
    if (categoryFilter?.id == categorySelected.value?.id) {
      categoryFilter = null;
    }

    categorySelected.value = categoryFilter;

    if (categoryFilter != null) {
      var newLersFilter = _lersOriginal
          .where((ler) => ler.categorys.contains(categoryFilter?.id));

      lers.assignAll(newLersFilter);
    }
  }
}
