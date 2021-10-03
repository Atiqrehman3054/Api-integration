
import 'dart:convert';

import 'package:api_service/NewsApi/model/newsModel.dart';
import 'package:http/http.dart'as http;

class Control{
  Future<List<NewsModel>> NewsApi() async{
    var url = Uri.parse("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=d4387f69586147f3a27d838c41d9a803");
    var response = await http.get(url);
   List<NewsModel> AllNews = [];
    var map = json.decode(response.body);
    List body = map['articles'];
print(response.statusCode);
print(response.body);

    body.forEach((element) {
      AllNews.add(NewsModel.fromJson(element));
    });



    // print(body);
    return AllNews;

    // body.forEach((element) {
    //   AllNews.add(News.fromJson(element));
    // });
    // List<News> Allnews  = body.map((news) => News.fromJson(news)).toList();
    // print(response.statusCode);
    // print(response.body);

   // return  AllNews;
  }

}