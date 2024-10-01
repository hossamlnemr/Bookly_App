import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;
  Failures({required this.errMessage});
}

class ServerFailure extends Failures {
  ServerFailure({required super.errMessage});
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: 'Bad certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Connection was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure(
            errMessage: 'Check your connnection and try again');
      case DioExceptionType.unknown:
        return ServerFailure(
            errMessage: 'Opps! There was an error, Please try later');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode >= 400 && statusCode <= 403) {
      return ServerFailure(errMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(errMessage: 'Request Not Found');
    } else if (statusCode == 500) {
      return ServerFailure(errMessage: 'Internal Server error');
    } else {
      return ServerFailure(errMessage: 'There is an error, Please try later');
    }
  }
}
