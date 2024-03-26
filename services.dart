import 'package:dio/dio.dart';
import 'package:flutteradvance/internetten_vericekme.dart/model.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';

class DioServices {
  final String servicesPath = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<ServicesModel>?> fetchResponse() async {
    //Dio paketini kullanarak istek atıyoruz
    final response = await Dio().get(servicesPath);
    // Gelen responsun durumunu kontrol ediyoruz.
    if (response.statusCode == HttpStatus.ok) {
      final dynamic responseData = response.data;
      // respons içindeki veriyi liste ise return ediyoruz.
      if (responseData is List) {
        return responseData.map((e) => ServicesModel.fromJson(e)).toList();
      }
    }
    return null;
  }
}
