import 'dart:convert';

import 'package:api_service/Models/LoginModel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future postRequst(String email, String password) async {

    var loginBody = {
      'email': email,
      'password': password,
    };
    print(loginBody);
    final response = await http.post(
        Uri.parse("https://staging.youth2youthtraining.com/api/auth/login"),
        body: loginBody);
    print(response.statusCode);
    print(response.body);
    print("AtiqRehman");

    return json.decode(response.body);
  }

  Future movieApi() async {
    final url = Uri.parse("https://imdb-api.com/en/API/Top250Movies/k_6itfp75r");
    final respones = await http.get(url);
    print(respones.statusCode);
    print(respones.body);
    return json.decode(respones.body);
  }


  Future TopMovieApi() async {
    final url = Uri.parse("https://imdb-api.com/en/API/InTheaters/k_12345678");

    final respones = await http.get(url);
    print(respones.statusCode);
    print(respones.body);
    return json.decode(respones.body);
  }
  Future ComingSoon() async {
    final url = Uri.parse("https://imdb-api.com/en/API/ComingSoon/k_12345678");

    final respones = await http.get(url);
    print(respones.statusCode);
    print(respones.body);
    return json.decode(respones.body);
  }











// class  LoginController extends GetxController{
//
//
//   // var login = List<Login>().obs;
//
//
//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//     // FetchingData();
//   }
//
//   Future  FetchingData(String username,String password) async{
//
//       final Url = Uri.parse("https://staging.youth2youthtraining.com/api/auth/login/");
//
//       final response = await http.post(Url,
//
//         // headers: <String,String>{
//         //
//         //   'Content-Type': 'application/json; charset=UTF-8',
//         //
//         // },
//
//           body: jsonEncode(<String,String>{
//
//             'user': username,
//             'password': password,
//
//           }),
//
//
//
//
//       );
//       if(response.statusCode == 200){
//
//         print(response.statusCode);
//         print(response.body);
//
//         // return json.decode(response.body);
//         return fromJson(jsonDecode(response.body));
//
//
//       }
//       else {
//
//         throw Exception('Failed');
//       }
//
//
//       // // List<Login> alldata = [];
//       // List body = jsonDecode(response.body);
//
//       // body.forEach((element) {
//       //   alldata.add(Login.fromJson(element));
//       // });
//
//       print(response.statusCode);
//       print(response.body);
//  return
//   }
//
}
