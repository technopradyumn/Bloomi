import 'package:equatable/equatable.dart';

class ProfileEntity extends Equatable {
  final String id;
  final String name;
  final String? gender;
  final double? heightCm;
  final String? dietType;
  final String? allergies;
  final DateTime? birthDate;

  const ProfileEntity({
    required this.id,
    required this.name,
    this.gender,
    this.heightCm,
    this.dietType,
    this.allergies,
    this.birthDate,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        gender,
        heightCm,
        dietType,
        allergies,
        birthDate,
      ];
}

