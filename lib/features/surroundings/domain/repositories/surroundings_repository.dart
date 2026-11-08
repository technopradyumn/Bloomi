import 'package:bloomi/features/surroundings/domain/entities/surroundings_entity.dart';

abstract class SurroundingsRepository {
  CityLocationEntity get selectedCity;
  void selectCity(CityLocationEntity city);
  Future<SurroundingsEntity?> getSurroundingsData({bool forceRefresh = false});
  Future<SurroundingsEntity> fetchForLocation(double lat, double lon, String cityName);
  Future<SurroundingsEntity?> detectLocationAndFetch();
}

