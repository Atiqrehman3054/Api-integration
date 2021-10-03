import 'dart:convert';

import 'package:api_service/Models/FruitModel.dart';
import 'package:api_service/Models/uptodate%20model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

var client = http.Client();

class UptodateController extends GetxController {
  @override
  // void onInit() {
  //   Name();
  //   // TODO: implement onInit
  //   super.onInit();
  // }

  Future<List<Product>> Name() async {
    final url = Uri.parse(
        "https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline");
    final response = await http.get(url);

    // print(response.statusCode);
    // print(response.body);

    List<Product> allitem = [];

    List body = json.decode(response.body);

    body.forEach((element) {
      print('inside body $element');

      allitem.add(Product.fromJson(element));
    });

    return allitem;
  }
  
  
  
 Future<List<Fruit>> FruitApi() async{
    
    final url = Uri.parse("https://fruityvice.com/api/fruit/all");
    final response =await http.get(url);
    print(response.statusCode);
    print(response.body);
    List body = json.decode(response.body);
    List<Fruit> allFruit  = body.map((fruit) => Fruit.fromJson(fruit)).toList();

    // print(allFruit);
    // print(response.body);
    // print(response.statusCode);
    return json.decode(response.body);

    
  }
  
}
