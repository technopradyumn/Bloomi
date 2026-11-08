import 'package:equatable/equatable.dart';

class ReminderEntity extends Equatable {
  final String id;
  final String type;
  final String time;
  final bool enabled;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ReminderEntity({
    required this.id,
    required this.type,
    required this.time,
    this.enabled = true,
    this.createdAt,
    this.updatedAt,
  });

  ReminderEntity copyWith({
    String? id,
    String? type,
    String? time,
    bool? enabled,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ReminderEntity(
      id: id ?? this.id,
      type: type ?? this.type,
      time: time ?? this.time,
      enabled: enabled ?? this.enabled,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  List<Object?> get props => [id, type, time, enabled, createdAt, updatedAt];
}

