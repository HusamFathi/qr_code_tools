import 'dart:developer';

import '../../../exceptions/exceptions.dart';
import '../../../extensions/string.dart';
import '../../../failures/failures.dart';
import '../../../locale/app_localizations_helper.dart';

class ExceptionToFailureUseCase {
  Failure call({required Exception exception}) {
    log(exception.toString(), name: 'ExceptionToFailureUseCase');
    if (exception is BadRequestException) {
      log('BadRequestException ${exception.fields} ');
      String message;
      try {
        message = Tr.current.badRequestException.capitalizeFirstLetter();
      } catch (e) {
        message = 'Bad Request';
      }
      return BadRequestFailure(
        fieldsErrors: exception.fields,
        message: message,
      );
    } else if (exception is NoInternetConnectionException) {
      String message;
      try {
        message = Tr.current.netWorkConnectionErrorMessage
            .capitalizeFirstLetter();
      } catch (e) {
        message = 'Network Connection Error';
      }
      return ServerFailure(message: message);
    } else if (exception is SessionExpiredException) {
      String message;
      try {
        message = Tr.current.sessionExpiredFailureMessage
            .capitalizeFirstLetter();
      } catch (e) {
        message = 'Session Expired';
      }
      return SessionExpiredFailure(message: message);
    } else if (exception is PaymentRequiredException) {
      String message;
      if (exception.message.isNotEmpty) {
        message = exception.message.capitalizeFirstLetter();
      } else {
        try {
          message = Tr.current.paymentRequiredFailureMessage
              .capitalizeFirstLetter();
        } catch (e) {
          message = 'Payment Required';
        }
      }
      return PaymentRequiredFailure(message: message);
    } else if (exception is ForbiddenException) {
      String message;
      try {
        message = Tr.current.forbiddenFailureMessage.capitalizeFirstLetter();
      } catch (e) {
        message = 'Forbidden';
      }
      return ForbiddenFailure(message: message);
    } else if (exception is CacheException) {
      String message;
      try {
        message = Tr.current.cacheFailure.capitalizeFirstLetter();
      } catch (e) {
        message = 'Cache Failure';
      }
      return CacheFailure(message: message);
    } else if (exception is MetaAuthException) {
      String message;
      try {
        message = Tr.current.metaAuthErrorMessage.capitalizeFirstLetter();
      } catch (e) {
        message = 'Meta Auth Error';
      }
      return MetaAuthFailure(message: message);
    } else if (exception is EmailVerificationRequiredException) {
      String message;
      try {
        message = Tr.current.emailVerificationRequiredFailureMessage
            .capitalizeFirstLetter();
      } catch (e) {
        message = 'Email verification is required to continue.';
      }
      return EmailVerificationRequiredFailure(
        id: exception.id,
        message: message,
      );
    } else if (exception is AuthFlowConflictException) {
      String message;
      try {
        message = Tr.current.authFlowConflictFailureMessage
            .capitalizeFirstLetter();
      } catch (e) {
        message = 'There is a conflict with the current authentication flow.';
      }
      return AuthFlowConflictFailure(
        flowId: exception.flowId,
        message: message,
      );
    } else {
      String message;
      try {
        message = Tr.current.unKnownErrorMessage.capitalizeFirstLetter();
      } catch (e) {
        message = 'Unknown Error';
      }
      return ServerFailure(message: message);
    }
  }
}
