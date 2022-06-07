import 'package:dio/dio.dart';
import 'package:tech_test/tools/res.dart';
import 'package:tech_test/tools/web_services/base.dart';

class AuthWebService extends BaseWebService{

  // Getting access token using the app created on Azure AD (S2S method).
  Future<String> login() async {
    final data = FormData.fromMap({
      'client_id': '095debd7-252b-442e-8eda-bfaf76872b88',
      'client_secret': 'H1G8Q~GsS15V4c6Q.AgaBOmLP-cu0GCYeyOyfckV',
      'grant_type': 'client_credentials',
      'resource': 'https://org3a7e1e01.api.crm4.dynamics.com',
    });
    final response = (await Dio().post(Res.authHost, data: data)).data;
    final token = response['access_token'];
    Res.token = token;
    dio.options.headers['Authorization'] = 'Bearer $token';
    //setToken(token);
    return token;
  }

}