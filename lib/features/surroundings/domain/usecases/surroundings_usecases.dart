import 'package:bloomi/features/surroundings/domain/entities/surroundings_entity.dart';
import 'package:bloomi/features/surroundings/domain/repositories/surroundings_repository.dart';

class GetSurroundingsDataUseCase {
  final SurroundingsRepository repository;
  GetSurroundingsDataUseCase(this.repository);

  Future<SurroundingsEntity?> call({bool forceRefresh = false}) =>
      repository.getSurroundingsData(forceRefresh: forceRefresh);
}

class SelectCityUseCase {
  final SurroundingsRepository repository;
  SelectCityUseCase(this.repository);

  void call(CityLocationEntity city) => repository.selectCity(city);
}

class DetectLocationUseCase {
  final SurroundingsRepository repository;
  DetectLocationUseCase(this.repository);

  Future<SurroundingsEntity?> call() => repository.detectLocationAndFetch();
}

