import 'package:dio/dio.dart';

import 'helper_methods.dart';

class DioHelper1 {
  static String _url = "http://10.0.2.2:8000/"; // base url
  final _dio = Dio(BaseOptions(baseUrl: _url));

  //get request
  Future<CustomResponse?> get(String endPoint,
      {Map<String, dynamic>? data}) async {
    //هنا بطبع نوغ الريكوست مع الاند بوينت
    print("request type : Get\tend point: $endPoint");
    try {
      var response = await _dio.get(endPoint, queryParameters: data);
      print(response.data); // بيطبع الداتا اللي جت في الريسبونس
    } on DioException catch (ex) {
      print(ex.message);
    }
    return null;
  }

  //post request
  Future<CustomResponse?> sendData(String endPoint,
      {Map<String, dynamic>? data}) async {
    //هنا بطبع نوغ الريكوست مع الاند بوينت
    print("request type : Post\tend point: ${_url + endPoint}");
    try {
      var response = await _dio.post(endPoint, data: data);
      print(response.data);
      return CustomResponse(
        message: response.data["message"],
        isSuccess: true,
        response: response,
      );
    } on DioException catch (ex) {
      print(ex.message); // بيطبع الخطأ اللي حصل
      String? msg = ex.response?.data["message"].toString();
      showToast(msg!); // بعرض لليوز توست فس حالة جه خطأ
      return CustomResponse(
          message: msg, isSuccess: false, response: ex.response);
    }
  }
}

class CustomResponse {
  final String message;
  final bool isSuccess;
  final Response? response;

  CustomResponse(
      {required this.message, required this.isSuccess, required this.response});
}
