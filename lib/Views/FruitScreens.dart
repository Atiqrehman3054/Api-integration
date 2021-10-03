import 'package:api_service/Controllers/Uptodate.dart';
import 'package:api_service/Models/FruitModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FruitScreen extends StatelessWidget {
  UptodateController FruitContoller = Get.put(UptodateController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app"),
      ),

      body:  FutureBuilder(
          future: FruitContoller.FruitApi(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              // print("you are right $snapshot");
              return Text("off");
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}
