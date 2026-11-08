import 'package:bloomi/features/auth/domain/entities/auth_user_entity.dart';

class AuthUserModel extends AuthUserEntity {
  const AuthUserModel({
    required super.id,
    required super.email,
    required super.displayName,
    super.photoUrl,
    super.hasCompletedOnboarding = false,
    super.isUnder18 = false,
    super.isFirstTimeUser = false,
    super.isReinstall = false,
  });

  factory AuthUserModel.fromJson(Map<String, dynamic> json) {
    return AuthUserModel(
      id: json['id'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String? ?? 'Friend',
      photoUrl: json['photoUrl'] as String?,
      hasCompletedOnboarding: json['hasCompletedOnboarding'] as bool? ?? false,
      isUnder18: json['isUnder18'] as bool? ?? false,
      isFirstTimeUser: json['isFirstTimeUser'] as bool? ?? false,
      isReinstall: json['isReinstall'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'displayName': displayName,
        'photoUrl': photoUrl,
        'hasCompletedOnboarding': hasCompletedOnboarding,
        'isUnder18': isUnder18,
        'isFirstTimeUser': isFirstTimeUser,
        'isReinstall': isReinstall,
      };

  factory AuthUserModel.fromEntity(AuthUserEntity entity) {
    return AuthUserModel(
      id: entity.id,
      email: entity.email,
      displayName: entity.displayName,
      photoUrl: entity.photoUrl,
      hasCompletedOnboarding: entity.hasCompletedOnboarding,
      isUnder18: entity.isUnder18,
      isFirstTimeUser: entity.isFirstTimeUser,
      isReinstall: entity.isReinstall,
    );
  }
}

