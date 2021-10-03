
import 'package:api_service/NewsApi/controller/screencontroller.dart';
import 'package:api_service/NewsApi/model/newsModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Screen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("News"),

      ),

      body: FutureBuilder(
        future: Control().NewsApi(),
        builder: (context,snapshot){
          // print(snapshot.data);
          if(snapshot.hasData){

            return ListView.builder(
              itemCount: snapshot.data.length,
                itemBuilder: (context,index){

                 NewsModel news  = snapshot.data[index];

                 // print("")

                 return Column(
                   children: [
                     Text(news.title),
                     Image.network(news.urlToImage,height: 100,width: 100,),
                     Text(news.description),

                     SizedBox(
                       height: 40,
                     )

                   ],
                 );

            });

          }
          return
            Center(child: CircularProgressIndicator());
        },
      ),

    );
  }
}
