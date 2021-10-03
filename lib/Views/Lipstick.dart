import 'package:api_service/Controllers/LipstickController.dart';
import 'package:api_service/Models/LipstickModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/get.dart';





class LipstickScreen extends StatelessWidget {
  final lip = Get.put(LipStickController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("lipstick screen"),
      ),

      body:  FutureBuilder(
        future: LipStickController().LipStickData(),
        builder: (context,AsyncSnapshot snapshot){
            
          if(snapshot.hasData){
          return ListView.builder(

               itemCount: snapshot.data.length,
              itemBuilder: (context,index){

                  App lipstick = snapshot.data[index];

                  return  Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                   child: Container(
                     
                     height: 200,
                     width: double.infinity,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         fit:BoxFit.cover,
                         image:  NetworkImage(lipstick.imageLink,)
                       ),
                       color: Colors.green[300],
                       borderRadius: BorderRadius.circular(20),
                     ),

                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(lipstick.name),
                         Image.network(lipstick.imageLink,height: 100,width: 100,),
                       ],
                     ),

                   ),
                 );
              }
          );
          }return Center(child: CircularProgressIndicator());

        },
      ),
    );
  }
}
