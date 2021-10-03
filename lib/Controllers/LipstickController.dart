import 'dart:convert';

import 'package:api_service/Models/LipstickModel.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;



class LipStickController extends GetxController{
  
  var lipstickitem  = List<App>().obs;
  
  
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    LipStickData();
  }


 Future<List<App>> LipStickData() async{

    final Url = Uri.parse("http://makeup-api.herokuapp.com/api/v1/products.json?brand=covergirl&product_type=lipstick");
     final response = await http.get(Url);

     List<App> all_lipstick = [];
     List body = jsonDecode(response.body);
     body.forEach((element) {
       all_lipstick.add(App.fromJson(element));
     });

    print("atiq rehman");
     print(response.statusCode);
     print(response.body);
     return all_lipstick;


 }
    
    
    
    
    
  }
  
