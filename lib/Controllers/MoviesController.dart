import 'dart:convert';

import 'package:api_service/Models/MoviesModels.dart';
import 'package:http/http.dart'as http;
import 'package:get/get.dart';

class MoviesController extends GetxController{

   // final  movielist = List<Movies>().obs;
  
  
  Future MovieFun() async{
     
    var url = Uri.parse("https://imdb-api.com/en/API/MostPopularMovies/k_9bzdskmf");
    var response = await http.get(url);

    print(response.statusCode);
    print(response.body);


    // List<Movies> list = [];
    //
    // List body = json.decode(response.body);
    //
    // body.forEach((element) {
    //   list.add(Movies.fromJson(element));
    // });





    return json.decode(response.body);
    
    
    
  }
  
}