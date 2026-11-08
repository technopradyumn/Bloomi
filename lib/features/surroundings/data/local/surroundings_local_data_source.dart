import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/surroundings/domain/entities/surroundings_entity.dart';
import 'package:drift/drift.dart' as drift;

abstract class SurroundingsLocalDataSource {
  Future<SurroundingsEntity?> getCachedSurroundings();
  Future<void> cacheSurroundings(SurroundingsEntity data);
}

class SurroundingsLocalDataSourceImpl implements SurroundingsLocalDataSource {
  final AppDatabase _db;

  SurroundingsLocalDataSourceImpl(this._db);

  @override
  Future<SurroundingsEntity?> getCachedSurroundings() async {
    final cached = await (_db.select(_db.weatherCache)..where((tbl) => tbl.id.equals('current')))
        .getSingleOrNull();

    if (cached == null) return null;

    return SurroundingsEntity(
      temperatureC: cached.temperatureC,
      feelsLikeC: cached.feelsLikeC,
      humidityPercent: cached.humidityPercent,
      uvIndex: cached.uvIndex,
      aqi: cached.aqi,
      cityName: cached.cityName,
      fetchedAt: cached.fetchedAt,
      isFromCache: true,
    );
  }

  @override
  Future<void> cacheSurroundings(SurroundingsEntity data) async {
    await _db.into(_db.weatherCache).insertOnConflictUpdate(
          WeatherCacheCompanion(
            id: const drift.Value('current'),
            temperatureC: drift.Value(data.temperatureC),
            feelsLikeC: drift.Value(data.feelsLikeC),
            humidityPercent: drift.Value(data.humidityPercent),
            uvIndex: drift.Value(data.uvIndex),
            aqi: drift.Value(data.aqi),
            cityName: drift.Value(data.cityName),
            fetchedAt: drift.Value(data.fetchedAt),
          ),
        );
  }
}

