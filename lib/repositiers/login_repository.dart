
import 'package:blocwork/Networking/networking.dart';
import 'package:blocwork/utils/constant.dart';

import '../data/model/login_model.dart';

class AuthRepository {
  Future<LoginModel?> login(String email, String password) async {
    NetworkingHelper networkHelper = NetworkingHelper(loginUrl);
    final loginJsonResponse = await networkHelper.postData(
      body: {"email": email, "password": password},
    );
    LoginModel loginModel = LoginModel.fromJson(loginJsonResponse);
    return loginModel;
  }
}