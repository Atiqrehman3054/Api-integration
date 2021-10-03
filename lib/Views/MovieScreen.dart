

import 'package:api_service/Controllers/MoviesController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MovieScreen extends StatelessWidget {

  MoviesController movies = Get.put(MoviesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("movie app"),
      ),
      body: FutureBuilder(
        future: movies.MovieFun(),
        builder: (context ,snapshot){
          if(snapshot.hasData){
            Center(child: Text("name"));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
