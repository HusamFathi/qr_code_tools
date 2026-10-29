class ServerException implements Exception {}

class LocalStorageErrorException implements Exception {}

class GoogleAuthScopesException implements Exception {}

class GettingGoogleAccessTokenException implements Exception {}

class NoInternetConnectionException implements Exception {}

class InitAuthException implements Exception {}

class SessionExpiredException implements Exception {}

class SocialAuthException implements Exception {}

class BadRequestException implements Exception {
  final Map<String, List<String>> fields;

  BadRequestException({required this.fields});
}

class ForbiddenException implements Exception {}

///cache exceptions
class CacheException implements Exception {}

// facebook auth exceptions
class MetaAuthException implements Exception {}

/// can not refresh token exception
class RefreshTokenException implements Exception {}

class PaymentRequiredException implements Exception {
  final String message;

  PaymentRequiredException({required this.message});
}

class EmailVerificationRequiredException implements Exception {
  final String id;
  EmailVerificationRequiredException({required this.id});
}

class AuthFlowConflictException implements Exception {
  final String flowId;
  AuthFlowConflictException({required this.flowId});
}
