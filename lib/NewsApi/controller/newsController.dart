
import 'dart:convert';

import 'package:api_service/NewsApi/model/newsModel.dart';
import 'package:http/http.dart'as http;

class Api{
  Future NewsApi() async{
    var url = Uri.parse("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=d4387f69586147f3a27d838c41d9a803");
    var response = await http.get(url);
    // List<News> AllNews = [];
    // // List body  = json.decode(response.body);
    // var body = json.decode(response.body);
    // // List body = map['items'];
    // List<News> Allnews  = body.map((news) => News.fromJson(news)).toList();

    print(response.statusCode);
    print(response.body);
    return  json.decode(response.body);
  }

}