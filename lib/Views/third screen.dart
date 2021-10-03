import 'package:api_service/Controllers/MovieController.dart';
import 'package:api_service/Models/top250movies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Top250 extends StatelessWidget {
final movie = Get.put(MoivesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Column(
        children: [
  // GetBuilder<MoivesController>(
  //
  //     builder: (controller){
  //       print("wasikk khan");
  //       print(controller);
  //       if(controller!=null) {
  //         Text("done");
  //       }        return Text("please correct this");
  //
  //
  // }),


          // GetBuilder<MoivesController>(
          //
          //     builder: (snapshot){
          //
          //
          // }
          // )

          FutureBuilder(
            future: MoivesController().Top250Movies(),
              builder: (context, snapshot){
                print("atiqrehman");
                print(snapshot.data);
                if(snapshot.hasData){

                return Container(
                  height: 300,
                  child:
                  ListView.builder(

                      itemCount: snapshot.data.length,
                      itemBuilder: (context,index){
                        Items moviedata = snapshot.data['items'][index];
                        print(moviedata);
                                 return Container(
                          height: 200,
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment:  MainAxisAlignment.center,
                            children: [
                              Text(moviedata.fullTitle),
                              // Text(moviedata.items[index].fullTitle),
                              // Image.network(moviedata[index].),
                              // Text(moviedata.fullTitle),
                            ],
                          ),


                        );
                      }
                  ),
                );
              }
            return Center(child: CircularProgressIndicator());

          })
        ],
      ),


    );

  }
}
