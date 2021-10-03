import 'dart:convert';

import 'package:api_service/Models/FakeApi.dart';
import 'package:http/http.dart' as http;

class FakeApi{
  static Future FetchData() async {
    final url = Uri.parse("https://fakestoreapi.com/products");

    final response = await http.get(url);

    print(response.statusCode);
    print(response.body);

    return json.decode(response.body);

    // if (response.statusCode == 200) {
    //   var jsondata = response.body;
    //
    //   return jsonDecode(jsondata);
    // }else{
    //
    //   return null;
    // }
  }

}
