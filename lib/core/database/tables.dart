import 'package:drift/drift.dart';

class UserProfiles extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().withDefault(const Constant('default_user'))();
  TextColumn get name => text()();
  TextColumn get gender => text().nullable()();
  DateTimeColumn get birthDate => dateTime().nullable()();
  RealColumn get heightCm => real().nullable()();
  TextColumn get units => text().withDefault(const Constant('metric'))();
  TextColumn get dietType => text().nullable()();
  TextColumn get allergies => text().nullable()();
  TextColumn get language => text().withDefault(const Constant('en'))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get deleted => boolean().withDefault(const Constant(false))();
  BoolColumn get isDirty => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {id};
}



class Targets extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().withDefault(const Constant('default_user'))();
  RealColumn get calories => real()();
  RealColumn get protein => real()();
  RealColumn get carbs => real()();
  RealColumn get fat => real()();
  RealColumn get fibre => real()();
  RealColumn get waterMl => real()();
  IntColumn get steps => integer()();
  RealColumn get sleepHours => real()();
  RealColumn get targetWeightKg => real().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get deleted => boolean().withDefault(const Constant(false))();
  BoolColumn get isDirty => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {id};
}



class FoodItems extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get hindiName => text().nullable()();
  TextColumn get category => text()();
  RealColumn get kcalPer100g => real()();
  RealColumn get proteinPer100g => real()();
  RealColumn get carbsPer100g => real()();
  RealColumn get fatPer100g => real()();
  RealColumn get fibrePer100g => real()();
  RealColumn get sugarPer100g => real().nullable()();
  RealColumn get sodiumPer100g => real().nullable()();
  TextColumn get micronutrientsJson => text().nullable()();
  TextColumn get source => text()();
  TextColumn get mealTypeTags => text().nullable()();
  TextColumn get dietTags => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get deleted => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}



class FoodUnits extends Table {
  TextColumn get id => text()();
  TextColumn get foodId => text()();
  TextColumn get unitName => text()();
  RealColumn get gramsPerUnit => real()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get deleted => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}



class CustomFoods extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().withDefault(const Constant('default_user'))();
  TextColumn get name => text()();
  RealColumn get servingSizeGrams => real()();
  RealColumn get kcal => real()();
  RealColumn get protein => real()();
  RealColumn get carbs => real()();
  RealColumn get fat => real()();
  RealColumn get fibre => real()();
  TextColumn get ingredientsJson => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get deleted => boolean().withDefault(const Constant(false))();
  BoolColumn get isDirty => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {id};
}



class MealLogs extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().withDefault(const Constant('default_user'))();
  DateTimeColumn get date => dateTime()();
  TextColumn get mealType => text()();
  TextColumn get foodReference => text()();
  TextColumn get foodName => text()();
  RealColumn get quantity => real()();
  TextColumn get unit => text()();
  RealColumn get totalGrams => real()();
  TextColumn get computedNutrientsSnapshot => text()();
  TextColumn get source => text().withDefault(const Constant('manual'))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get deleted => boolean().withDefault(const Constant(false))();
  BoolColumn get isDirty => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {id};
}



class WaterLogs extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().withDefault(const Constant('default_user'))();
  DateTimeColumn get date => dateTime()();
  IntColumn get ml => integer()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get deleted => boolean().withDefault(const Constant(false))();
  BoolColumn get isDirty => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {id};
}



class BodyEntries extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().withDefault(const Constant('default_user'))();
  TextColumn get type => text()();
  RealColumn get value => real()();
  TextColumn get unit => text()();
  DateTimeColumn get measuredAt => dateTime()();
  TextColumn get source => text().withDefault(const Constant('manual'))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get deleted => boolean().withDefault(const Constant(false))();
  BoolColumn get isDirty => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {id};
}



class WorkoutLogs extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().withDefault(const Constant('default_user'))();
  TextColumn get type => text()();
  IntColumn get durationMinutes => integer()();
  RealColumn get calories => real()();
  DateTimeColumn get recordedAt => dateTime()();
  TextColumn get source => text().withDefault(const Constant('manual'))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get deleted => boolean().withDefault(const Constant(false))();
  BoolColumn get isDirty => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {id};
}



class PlanChecklists extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().withDefault(const Constant('default_user'))();
  DateTimeColumn get date => dateTime()();
  TextColumn get item => text()();
  BoolColumn get done => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get deleted => boolean().withDefault(const Constant(false))();
  BoolColumn get isDirty => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {id};
}



class Reminders extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().withDefault(const Constant('default_user'))();
  TextColumn get type => text()();
  TextColumn get time => text()();
  BoolColumn get enabled => boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get deleted => boolean().withDefault(const Constant(false))();
  BoolColumn get isDirty => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {id};
}



class AchievementsAndStreaks extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().withDefault(const Constant('default_user'))();
  TextColumn get badgeId => text()();
  DateTimeColumn get unlockedAt => dateTime().nullable()();
  IntColumn get streakCounter => integer().withDefault(const Constant(0))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get deleted => boolean().withDefault(const Constant(false))();
  BoolColumn get isDirty => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {id};
}



class ScanQueue extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().withDefault(const Constant('default_user'))();
  TextColumn get imagePath => text()();
  DateTimeColumn get capturedAt => dateTime()();
  TextColumn get status => text().withDefault(const Constant('pending'))();
  TextColumn get resultJson => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}



class WeatherCache extends Table {
  TextColumn get id => text()();
  RealColumn get temperatureC => real()();
  RealColumn get feelsLikeC => real()();
  IntColumn get humidityPercent => integer()();
  RealColumn get uvIndex => real()();
  IntColumn get aqi => integer()();
  TextColumn get cityName => text()();
  DateTimeColumn get fetchedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}



class SyncState extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().withDefault(const Constant('default_user'))();
  BoolColumn get hasPulledOnce => boolean().withDefault(const Constant(false))();
  DateTimeColumn get lastSyncTime => dateTime().nullable()();
  TextColumn get driveFileIdsJson => text().nullable()();
  TextColumn get lastError => text().nullable()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

class ImportedHealthRecords extends Table {
  TextColumn get id => text()(); // ${userId}_${dataType}_${source}_${startTime.millisecondsSinceEpoch}_${endTime.millisecondsSinceEpoch}
  TextColumn get userId => text().withDefault(const Constant('default_user'))();
  TextColumn get dataType => text()(); // 'steps', 'distance', 'calories', 'heart_rate', 'spo2', 'sleep'
  TextColumn get source => text()(); // origin package or device identifier
  TextColumn get sourceName => text()(); // formatted label, e.g. 'Galaxy Watch', 'Phone'
  TextColumn get deviceType => text()(); // 'watch', 'phone', 'unknown'
  DateTimeColumn get startTime => dateTime()();
  DateTimeColumn get endTime => dateTime()();
  RealColumn get value => real()();
  BoolColumn get isDirty => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}


