import 'package:alert_app/models/lers_model.dart';
import 'package:alert_app/restClient/restClient.dart';

import './lers_repository.dart';

class LersRepositoryImpl implements LersRepository {
  final RestClient _restClient;

  const LersRepositoryImpl({required RestClient restClient})
      : _restClient = restClient;

  @override
  Future<List<LersModel>> getLers() async {
    final ler =
        await _restClient.get<List<LersModel>>('alert.json', decoder: (data) {
      final lers = data['lers'];
      if (lers != null) {
        return lers.map<LersModel>((data) => LersModel.fromMap(data)).toList();
      }
      return <LersModel>[];
    });

    if (ler.hasError) {
      print('Erro ao buscar lers [${ler.statusText}]');
      throw Exception('Erro ao buscar lers');
    }
    return ler.body ?? <LersModel>[];
  }
}
