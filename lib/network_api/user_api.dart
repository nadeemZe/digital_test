

import 'package:http/http.dart' as http;


class UserApi {

  Future<http.Response> userLoginApi(String email, String password)async{
    try{
      var url = Uri.https('testapi.alifouad91.com', 'api/login');
      var response = await http.post(url, body: {'email': email, 'password': password});
      return response;
    }on Exception catch(e){
      throw e.toString();
    }
  }

  Future<http.Response> userRegisterApi(String email, String name,String phone,String country_code,String password,String password_confirm)async{
    try{
      var url = Uri.https('testapi.alifouad91.com', 'api/user/register');
      var response = await http.post(url,
          body: {
            'name': name,
            'email': email,
            'phone':phone,
            'country_code':country_code,
            'password':password,
            'password_confirm':password_confirm,
        }
      );
      return response;
    }on Exception catch(e){
      throw e.toString();
    }
  }

  Future<http.Response> userUpdateApi(String email, String name,String phone,String country_code,)async{
    try{
      var url = Uri.https('testapi.alifouad91.com', 'api/user/update');
      var response = await http.post(url,
          body: {
            'name': name,
            'email': email,
            'phone':phone,
            'country_code':country_code,
        }
      );
      return response;
    }on Exception catch(e){
      throw e.toString();
    }
  }

  Future<http.Response> userGetApi(String token, String id,)async{
    try{
      var url = Uri.https('testapi.alifouad91.com', 'api/user/$id');
      var response = await http.get(url,
          headers: {
            'Authorization':'Bearer $token',
          }
      );
      return response;
    }on Exception catch(e){
      throw e.toString();
    }
  }

}
