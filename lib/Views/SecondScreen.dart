import 'package:api_service/Controllers/LoginController.dart';
import 'package:api_service/Models/LoginModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';






TextEditingController namecontroller = TextEditingController(text:"mor_2314");
TextEditingController passwordcontroller = TextEditingController(text:"83r5^_");





class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return

        Scaffold(
          appBar: AppBar(
            title: Text("api call"),
          ),
          body: FutureBuilder(
            future:  ApiService().ComingSoon(),
            builder: (context,AsyncSnapshot snapshot){
              if(snapshot.hasData){
                // items[0].title
                return
                  // Text(snapshot.data["items"][0]["title"]);
                  Column(
                    children: [

                      Container(
                        height: 250,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                        itemCount:  snapshot.data["items"].length,
                          itemBuilder: (context,items){

                            return Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.red,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(snapshot.data["items"][items]["title"]),
                                      Image.network(snapshot.data["items"][items]["image"]),
                                      Text(snapshot.data["items"][items]["fullTitle"]),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }
                ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 300,
                        child:
                        FutureBuilder(
                            future: ApiService().TopMovieApi(),
                            builder: (context,AsyncSnapshot snapshot) {
                              if (snapshot.hasData) {
                                return GridView.builder(
                                    itemCount: snapshot.data["items"].length,
                                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: 200,
                                        childAspectRatio: 3 / 2,
                                        crossAxisSpacing: 20,
                                        mainAxisSpacing: 20),
                                    itemBuilder: (BuildContext context,  index) {
                                      return new Card(
                                        child: new GridTile(
                                          footer: new Text(snapshot.data["items"][index]["title"]),
                                          child: Image.network(snapshot.data["items"][index]["image"]),
                                        ),
                                      );
                                    }
                                );
                              }
                              return CircularProgressIndicator();
                            }   ),
                      )
                    ],
                  );

              }return Center(child: CircularProgressIndicator());

            },
          ),
    );
}
}