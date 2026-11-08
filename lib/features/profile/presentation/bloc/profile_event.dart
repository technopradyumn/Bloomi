part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object?> get props => [];
}

class ProfileRequested extends ProfileEvent {
  const ProfileRequested();
}

class ProfileUpdated extends ProfileEvent {
  final String name;
  final String gender;
  final double heightCm;
  final String dietType;
  final String allergies;

  const ProfileUpdated({
    required this.name,
    required this.gender,
    required this.heightCm,
    required this.dietType,
    required this.allergies,
  });

  @override
  List<Object?> get props => [name, gender, heightCm, dietType, allergies];
}

