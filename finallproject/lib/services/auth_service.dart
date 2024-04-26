import 'package:dio/dio.dart';
import 'package:finallproject/models/login_request.dart';
import 'package:finallproject/storages/auth_storage.dart';

class AuthService {
  Dio dio = Dio();
  static const url = 'http://localhost/android/operations/viewuser.php';

  Future<String> signinWithEmailAndPassword(
      {required LoginRequestModel request}) async {
    try {
      final response = await dio.post(url,
          options: Options(
            headers: {
              'Accept': 'aplication/json',
            },
          ),
          data: request.toJson());

      if (response.statusCode == 200 || response.statusCode == 201) {
        String data = response.data['data'];
        AuthStorage().storeCredentialToLocal(data);

        return data;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
