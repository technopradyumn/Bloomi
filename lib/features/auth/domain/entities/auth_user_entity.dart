import 'package:equatable/equatable.dart';

class AuthUserEntity extends Equatable {
  const AuthUserEntity({
    required this.id,
    required this.email,
    required this.displayName,
    this.photoUrl,
    this.hasCompletedOnboarding = false,
    this.isUnder18 = false,
    this.isFirstTimeUser = false,
    this.isReinstall = false,
  });

  final String id;
  final String email;
  final String displayName;
  final String? photoUrl;
  final bool hasCompletedOnboarding;
  final bool isUnder18;
  final bool isFirstTimeUser;
  final bool isReinstall;

  AuthUserEntity copyWith({
    String? id,
    String? email,
    String? displayName,
    String? photoUrl,
    bool? hasCompletedOnboarding,
    bool? isUnder18,
    bool? isFirstTimeUser,
    bool? isReinstall,
  }) {
    return AuthUserEntity(
      id: id ?? this.id,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      photoUrl: photoUrl ?? this.photoUrl,
      hasCompletedOnboarding:
          hasCompletedOnboarding ?? this.hasCompletedOnboarding,
      isUnder18: isUnder18 ?? this.isUnder18,
      isFirstTimeUser: isFirstTimeUser ?? this.isFirstTimeUser,
      isReinstall: isReinstall ?? this.isReinstall,
    );
  }

  @override
  List<Object?> get props => [
        id,
        email,
        displayName,
        photoUrl,
        hasCompletedOnboarding,
        isUnder18,
        isFirstTimeUser,
        isReinstall,
      ];
}

