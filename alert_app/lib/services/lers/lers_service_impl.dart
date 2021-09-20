import 'package:alert_app/models/category_model.dart';
import 'package:alert_app/models/lers_model.dart';
import 'package:alert_app/repositories/lers/lers_repository.dart';

import './lers_service.dart';

class LersServiceImpl implements LersService {
  LersRepository _lersRepository;

  LersServiceImpl({
    required LersRepository lersRepository,
  }) : _lersRepository = lersRepository;

  @override
  Future<List<LersModel>> getLers() => _lersRepository.getLers();

  @override
  Future<List<CategoryModel>> getCategorys() => _lersRepository.getCategorys();
}
