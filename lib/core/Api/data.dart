import 'package:dio/dio.dart';
import 'package:iotics/core/Api/Models/sign_up_model/sign_up_model.dart';
import 'package:iotics/core/Api/url.dart';

abstract class Api {
  Future<bool?> signIn(SignUpModel value);
}

class TasteDb extends Api {
  final dio = Dio();
  final url = Url();
  TasteDb() {
    dio.options = BaseOptions(
      baseUrl: url.baseUrl,
      responseType: ResponseType.plain,
    );
  }
  @override
  Future<bool?> signIn(SignUpModel value) async {
    final response = await dio.post(url.login,  data: value.toJson(),
    options: Options(
        followRedirects: false,
      ));
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }
}
