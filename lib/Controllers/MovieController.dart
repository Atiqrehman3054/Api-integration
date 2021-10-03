import 'dart:convert';

import 'package:api_service/Models/top250movies.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;

class MoivesController extends GetxController {
  var movies = List<Top_250>().obs;

  @override
  // void onInit() {
  //   // TODO: implement onInit
  //   super.onInit();
  //   Top250Movies();
  // }

  Future<List<Top_250>> Top250Movies() async{
    final url = Uri.parse("https://imdb-api.com/en/API/Top250Movies/k_9bzdskmf");
    final respones = await http.get(url);
    List<Top_250> allmovie = [];

    var map = jsonDecode(respones.body);
    List body = map['items'];


    body.forEach((element) {
      allmovie.add(Top_250.fromJson(element));
    });

    print(respones.statusCode);
    print(respones.body);

    return allmovie;
  
  }




}
