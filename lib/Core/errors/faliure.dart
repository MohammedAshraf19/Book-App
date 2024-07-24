import 'package:dio/dio.dart';

abstract class Failure{
  final String errorMessage;
  Failure(this.errorMessage);
}

class ServerFailure extends Failure
{
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioException(DioException dioException){
    switch (dioException.type)
    {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connect Timeout with APIServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Timeout with APIServer");
      case DioExceptionType.receiveTimeout:
    return ServerFailure("Receive Timeout with APIServer");


      case DioExceptionType.badCertificate:
        return ServerFailure("OOPs");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.connectionError:
        return ServerFailure("No Internet Connection");


      case DioExceptionType.cancel:
        return ServerFailure("Request to APIServer was Cancel");

      case DioExceptionType.unknown:
        return ServerFailure("Unexpected Error PLease Try Again, Later");
    }
  }

  factory ServerFailure.fromResponse(int status, dynamic response){
    if (status == 400 || status == 401 || status == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (status == 404) {
      return ServerFailure("Please, Try Again Later");
    }
    return ServerFailure("Unexpected Error PLease Try Again, Later");
  }
}