import 'package:dio/dio.dart';

import 'failures.dart';

String handleError(DioException e) {
  
  if (e.type == DioExceptionType.connectionTimeout) {
    return "Connection Time Out Try Again Later";
  } else if (e.type == DioExceptionType.receiveTimeout) {
    return "Receive Time Out Try Again Later";
  } else if (e.type == DioExceptionType.badResponse) {
    return (e.response?.data is Map) ? e.response?.data["message"] : e.message;
  } else if (e.type == DioExceptionType.sendTimeout) {
    return "Send Time Out Try Again Later";
  } else {
    return "Unknown Error";
  }
}

String handleErrByType(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
    case NetworkFailure:
    case CacheFailure:
      return failure.message;
    default:
      return "Unknown Error";
  }
}
