import 'package:api_service/NewsApi/controller/newsController.dart';
import 'package:api_service/NewsApi/model/newsModel.dart';
import 'package:flutter/material.dart';


class NewsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("news"),
      ),

      body: FutureBuilder(
        future: Api().NewsApi(),
        builder: (context,snapshot){
          print(snapshot.data);
          if(snapshot.hasData){
            return
              // ext("again fail");
              ListView.builder(
              itemCount: snapshot.data["articles"].length,
                itemBuilder: (context,index){
                // News news = snapshot.data[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.black,
                    child: Column(
                      children: [
                        Text(snapshot.data["articles"][index]["title"],style: TextStyle(color: Colors.white),),
                        Image.network(snapshot.data["articles"][index]["urlToImage"]),
                        Text(snapshot.data["articles"][index]["description"],style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            });
          }
          return  Center(
            child: CircularProgressIndicator(),
          );

        },
      ),
    );
  }
}
