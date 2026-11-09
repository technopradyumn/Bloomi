import 'dart:convert';
import 'package:bloomi/features/food/domain/entities/nutrient_snapshot_entity.dart';

class NutrientSnapshotModel extends NutrientSnapshotEntity {
  const NutrientSnapshotModel({
    required super.calories,
    required super.protein,
    required super.carbs,
    required super.fat,
    required super.fibre,
  });

  Map<String, dynamic> toMap() => {
        'kcal': calories,
        'protein': protein,
        'carbs': carbs,
        'fat': fat,
        'fibre': fibre,
      };

  String toJson() => jsonEncode(toMap());

  factory NutrientSnapshotModel.fromMap(Map<String, dynamic> map) {
    return NutrientSnapshotModel(
      calories: (map['kcal'] as num?)?.toDouble() ??
          (map['calories'] as num?)?.toDouble() ??
          0.0,
      protein: (map['protein'] as num?)?.toDouble() ?? 0.0,
      carbs: (map['carbs'] as num?)?.toDouble() ?? 0.0,
      fat: (map['fat'] as num?)?.toDouble() ?? 0.0,
      fibre: (map['fibre'] as num?)?.toDouble() ?? 0.0,
    );
  }

  factory NutrientSnapshotModel.fromJson(String jsonStr) {
    try {
      dynamic decoded = jsonDecode(jsonStr);
      if (decoded is String) {
        decoded = jsonDecode(decoded);
      }
      if (decoded is Map<String, dynamic>) {
        return NutrientSnapshotModel.fromMap(decoded);
      }
      return const NutrientSnapshotModel(calories: 0, protein: 0, carbs: 0, fat: 0, fibre: 0);
    } catch (_) {
      return const NutrientSnapshotModel(calories: 0, protein: 0, carbs: 0, fat: 0, fibre: 0);
    }
  }

  factory NutrientSnapshotModel.fromEntity(NutrientSnapshotEntity entity) {
    return NutrientSnapshotModel(
      calories: entity.calories,
      protein: entity.protein,
      carbs: entity.carbs,
      fat: entity.fat,
      fibre: entity.fibre,
    );
  }
}

typedef NutrientSnapshot = NutrientSnapshotModel;

