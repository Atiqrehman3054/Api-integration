import 'package:api_service/Controllers/Uptodate.dart';
import 'package:api_service/Models/uptodate%20model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Uptodate extends StatelessWidget {

  UptodateController uptodate = Get.put(UptodateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(title: Text("offline"),
      ),

      body: FutureBuilder(
        future: uptodate.Name(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data.length,
                itemBuilder: (context,index){
                Product product = snapshot.data[index];
              return Column(
                children: [
                  Text(product.name),

                  Text(product.description),

                  Text(product.price.toString()),

                  Image.network(product.imageLink),
                ],
              );
            });

          }
          return  CircularProgressIndicator();
        },
      ),


    );
  }
}
