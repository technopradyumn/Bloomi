class ServerException implements Exception {
  final String message;
  const ServerException([this.message = 'Server exception']);

  @override
  String toString() => 'ServerException: $message';
}

class DatabaseException implements Exception {
  final String message;
  const DatabaseException([this.message = 'Database exception']);

  @override
  String toString() => 'DatabaseException: $message';
}

class CacheException implements Exception {
  final String message;
  const CacheException([this.message = 'Cache exception']);

  @override
  String toString() => 'CacheException: $message';
}

class NetworkException implements Exception {
  final String message;
  const NetworkException([this.message = 'Network exception']);

  @override
  String toString() => 'NetworkException: $message';
}

class AuthException implements Exception {
  final String message;
  const AuthException([this.message = 'Auth exception']);

  @override
  String toString() => 'AuthException: $message';
}

