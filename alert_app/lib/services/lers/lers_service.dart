import 'package:alert_app/models/category_model.dart';
import 'package:alert_app/models/lers_model.dart';

abstract class LersService {
  Future<List<LersModel>> getLers();
  Future<List<CategoryModel>> getCategorys();
}
