import 'package:revise_practice/data/response/status.dart';

class AppResponse<T> {
  Status? status;
  T? data;
  String? message;
  AppResponse(this.status, this.data, this.message);

  AppResponse.loading() : status = Status.loading;
  AppResponse.compleated() : status = Status.compleated;
  AppResponse.error() : status = Status.error;

  @override
  String toString() {
    return "status: $status, data: $data, message: $message";
  }
}
