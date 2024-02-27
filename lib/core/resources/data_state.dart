import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  final DioError? error;

  DataState({this.data, this.error});
}

class DataSucces<T> extends DataState<T> {
  DataSucces(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  DataFailed(DioError error) : super(error: error);
}
