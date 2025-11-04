import 'package:baaba_api_services/api_services.dart';
import 'package:baaba_api_services/utils/failure.dart';
import 'package:dio/src/response.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

typedef ProgressCallback = void Function(int count, int total);

@Singleton()
final class ApiService {
  const ApiService(this._apiServices);

  final ApiServices _apiServices;

  Future<Either<Failure, Response<dynamic>>> get(
    String endpoint, {
    Object? data,
    Map<String, dynamic>? params,
    Map<String, String>? headers,
    ProgressCallback? onReceiveProgress,
    ProgressCallback? onSendProgress,
    Duration receiveTimeout = const Duration(seconds: 30),
    Duration sendTimeout = const Duration(seconds: 30),
  }) {
    return _apiServices.get(
      endpoint: endpoint,
      data: data,
      params: params,
      headers: headers,
      onReceiveProgress: onReceiveProgress,
      onSendProgress: onSendProgress,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
  }

  Future<Either<Failure, Response<dynamic>>> delete(
    String endpoint, {
    Object? data,
    Map<String, dynamic>? params,
    Map<String, String>? headers,
    ProgressCallback? onReceiveProgress,
    ProgressCallback? onSendProgress,
    Duration receiveTimeout = const Duration(seconds: 30),
    Duration sendTimeout = const Duration(seconds: 30),
  }) {
    return _apiServices.delete(
      endpoint: endpoint,
      data: data,
      params: params,
      headers: headers,
      onReceiveProgress: onReceiveProgress,
      onSendProgress: onSendProgress,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
  }

  Future<Either<Failure, Response<dynamic>>> patch(
    String endpoint, {
    Object? data,
    Map<String, dynamic>? params,
    Map<String, String>? headers,
    ProgressCallback? onReceiveProgress,
    ProgressCallback? onSendProgress,
    Duration receiveTimeout = const Duration(seconds: 30),
    Duration sendTimeout = const Duration(seconds: 30),
  }) {
    return _apiServices.patch(
      endpoint: endpoint,
      data: data,
      params: params,
      headers: headers,
      onReceiveProgress: onReceiveProgress,
      onSendProgress: onSendProgress,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
  }

  Future<Either<Failure, Response<dynamic>>> post(
    String endpoint, {
    Object? data,
    Map<String, dynamic>? params,
    Map<String, String>? headers,
    ProgressCallback? onReceiveProgress,
    ProgressCallback? onSendProgress,
    Duration receiveTimeout = const Duration(seconds: 30),
    Duration sendTimeout = const Duration(seconds: 30),
  }) {
    return _apiServices.post(
      endpoint: endpoint,
      data: data,
      params: params,
      headers: headers,
      onReceiveProgress: onReceiveProgress,
      onSendProgress: onSendProgress,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
  }

  Future<Either<Failure, Response<dynamic>>> put(
    String endpoint, {
    Object? data,
    Map<String, dynamic>? params,
    Map<String, String>? headers,
    ProgressCallback? onReceiveProgress,
    ProgressCallback? onSendProgress,
    Duration receiveTimeout = const Duration(seconds: 30),
    Duration sendTimeout = const Duration(seconds: 30),
  }) {
    return _apiServices.put(
      endpoint: endpoint,
      data: data,
      params: params,
      headers: headers,
      onReceiveProgress: onReceiveProgress,
      onSendProgress: onSendProgress,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
    );
  }

  void cancelRequest({String cancellationReason = ''}) {
    return _apiServices.cancelRequest(cancellationReason: cancellationReason);
  }
}
