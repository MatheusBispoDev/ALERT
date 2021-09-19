import 'package:alert_app/models/lers_model.dart';

abstract class LersService {
  Future<List<LersModel>> getLers();
}
