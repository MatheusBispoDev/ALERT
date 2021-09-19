import 'package:alert_app/models/lers_model.dart';

abstract class LersRepository {
  Future<List<LersModel>> getLers();
}