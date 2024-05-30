import 'package:dio/dio.dart';
import 'package:qbankproject/loginresponse.dart';
import 'package:qbankproject/registerresponse.dart';
import 'package:qbankproject/url..dart';

class ApiClass {

  static ApiClass instance = ApiClass();
  factory() {
    return instance;
  }

  final dio = Dio();
  final url = URL(); 

  ApiClass() {
 
  }






var header = {'Content-type': 'application/json; charset=utf-8'};
  Future<registerpg?> registerUserApi(Map<dynamic, dynamic> formData) async {
    try {
      final result = await dio.post('${url.baseUrl}${url.registerEndpoint}',
          data: formData, options: Options(headers: header));

      print("${result.data} sssssssssssssssssssssssssssssssss");
      return registerpg.fromJson((result.data));
    } on DioException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }











var header1 = {'Content-type': 'application/json; charset=utf-8'};
  Future<loginpg?> loginUserApi(FormData formData) async {
    print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
    try {
      final result = await dio.post( '${url.baseUrl}${url.loginEndpoint}',
          data: formData, options: Options(headers: header));

      print(result.data);
      return loginpg.fromJson((result.data));
    } on DioException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }
}




