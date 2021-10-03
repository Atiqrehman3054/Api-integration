import 'package:api_service/Models/FakeApi.dart';
import 'package:api_service/services/FakeApiservice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;



class FakeApiController extends GetxController{

  var list = List<Product>().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    FetchingProduct();
    // TODO: implement onInit
    super.onInit();
  }

 void  FetchingProduct() async{

    try{
      isLoading(true);
      var product = await FakeApi.FetchData();
      if(product != null){

        list.value = product;

        // productlist.value = product;
      }
    }
   finally{
      isLoading(false);
   }
  }



}