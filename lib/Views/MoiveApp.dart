import 'package:api_service/Controllers/LoginController.dart';
import 'package:api_service/Views/SecondScreen.dart';
import 'package:api_service/Views/third%20screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constants.dart';


class MovieApp extends StatefulWidget {


  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {


 @override





  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
          backgroundColor: kPagebackgroundcolor,
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SvgPicture.asset("asset/image/svgfile.svg"),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Top Class Movie App",
                      style: HeadingText.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 28),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Show all data upto Date IMDB",
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 19,
                          fontWeight: FontWeight.w300),
                    ),
            Container(
              height: 300,
              child:       Container(
                  height: 300,
                  child:       FutureBuilder(
                  future: ApiService().TopMovieApi(),
                    builder: (context,AsyncSnapshot snapshot){

                      if(snapshot.hasData){
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: Row(
                            //
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: NetworkImage(snapshot.data["items"][0]["image"]),
                                      fit: BoxFit.cover,
                                    ),
                                    color: kBackgroundColor),
                                height: 210,
                                width: 177,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    // Container(
                                    //   child:
                                    // ),
                                    Container(
                                      transform: Matrix4.translationValues(10, 80, 0),
                                      alignment: Alignment.topLeft,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            snapshot.data["items"][0]["title"],
                                            style: HeadingText2.copyWith(
                                              color: kButtonTextColor,
                                            ),
                                          ),
                                          Text(
                                            snapshot.data["items"][0]["year"],
                                            style: TextStyle(
                                                color: kButtonTextColor, fontSize: 11),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        transform: Matrix4.translationValues(0, 150, 0),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(

                      snapshot.data["items"][0]["runtimeStr"],
                                                style: TextStyle(
                                                    color: kButtonTextColor,
                                                    fontSize: 11),
                                              ),
                                              ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                                child: MaterialButton(
                                                  onPressed: () {
                                                    Navigator.push(context, MaterialPageRoute(builder: (_) =>SecondScreen()));
                                                  },
                                                  color: kButtonTextColor,
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(
                                                        horizontal: 0, vertical: 10),
                                                    child: Text('START'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: NetworkImage(snapshot.data["items"][1]["image"]),
                                      fit: BoxFit.cover,
                                    ),
                                    color: kBackgroundColor),
                                height: 210,
                                width: 177,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    // Container(
                                    //   child:
                                    // ),
                                    Container(
                                      transform: Matrix4.translationValues(10, 80, 0),
                                      alignment: Alignment.topLeft,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            snapshot.data["items"][1]["title"],
                                            style: HeadingText2.copyWith(
                                              color: kButtonTextColor,
                                            ),
                                          ),
                                          Text(
                                            snapshot.data["items"][1]["year"],
                                            style: TextStyle(
                                                color: kButtonTextColor, fontSize: 11),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        transform: Matrix4.translationValues(0, 150, 0),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(

                      snapshot.data["items"][1]["runtimeStr"],
                                                style: TextStyle(
                                                    color: kButtonTextColor,
                                                    fontSize: 11),
                                              ),
                                              ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                                child: MaterialButton(
                                                  onPressed: () {
                                                    Navigator.push(context, MaterialPageRoute(builder: (_) =>Top250()));
                                                  },
                                                  color: kButtonTextColor,
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(
                                                        horizontal: 0, vertical: 10),
                                                    child: Text('START'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                    )
                                  ],
                                ),
                              ),
                              // Container(
                              //   decoration: BoxDecoration(
                              //       borderRadius: BorderRadius.circular(20),
                              //       color: yellowrColor),
                              //   height: 210,
                              //   width: 177,
                              //   child: Stack(
                              //     alignment: Alignment.topCenter,
                              //     children: [
                              //       Container(
                              //         child: SvgPicture.asset("asset/Mask Group.svg"),
                              //       ),
                              //       Container(
                              //         transform: Matrix4.translationValues(10, 80, 0),
                              //         alignment: Alignment.topLeft,
                              //         child: Column(
                              //           crossAxisAlignment: CrossAxisAlignment.start,
                              //           children: [
                              //             Text(
                              //               'Relaxation',
                              //               style: HeadingText2.copyWith(),
                              //             ),
                              //             Text(
                              //               'MUSIC',
                              //               style: TextStyle(fontSize: 11),
                              //             ),
                              //           ],
                              //         ),
                              //       ),
                              //       Container(
                              //           transform: Matrix4.translationValues(0, 150, 0),
                              //           child: Padding(
                              //             padding: const EdgeInsets.symmetric(
                              //                 horizontal: 10),
                              //             child: Row(
                              //               mainAxisAlignment:
                              //               MainAxisAlignment.spaceBetween,
                              //               children: [
                              //                 Text(
                              //                   '3-10 MIN',
                              //                   style: TextStyle(fontSize: 11),
                              //                 ),
                              //                 ClipRRect(
                              //                   borderRadius: BorderRadius.all(
                              //                       Radius.circular(30)),
                              //                   child: MaterialButton(
                              //                     onPressed: () {
                              //
                              //                       Navigator.push(context, MaterialPageRoute(builder: (_) =>SecondScreen()));
                              //
                              //                     },
                              //                     color: Colors.black,
                              //                     child: Padding(
                              //                       padding: const EdgeInsets.symmetric(
                              //                           horizontal: 0, vertical: 10),
                              //                       child: Text(
                              //                         'START',
                              //                         style: TextStyle(
                              //                             color: CupertinoColors.white),
                              //                       ),
                              //                     ),
                              //                   ),
                              //                 ),
                              //               ],
                              //             ),
                              //           ))
                              //     ],
                              //   ),
                              // ),
                            ],
                          ),
                        );
                      }
                      return Center(child: CircularProgressIndicator());

                    },
                  )
              ),


            ),
                    Container(
                      height: 95,
                      width: 374,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('asset/image/image (29).png'),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Daily Through",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "MADITATION . 3-10 MIN",
                                  style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                                )
                              ],
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.play_arrow_sharp,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Coming Movies",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 165,
               child: FutureBuilder(
                  future: ApiService().ComingSoon(),
      builder: (context,AsyncSnapshot snapshot){
        if(snapshot.hasData){
          return    ListView.builder(
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: snapshot.data["items"].length,
            itemBuilder: (BuildContext context,index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: (){
                    Get.to(SecondScreen());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 161,
                    width: 162,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 113,
                          width: 162,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(snapshot.data["items"][index]["image"]),
                              fit: BoxFit.fill,
                            ),
                            color: greenColor,
                          ),
                          // child: SvgPicture.asset("asset/image/Mask Group(4).svg",fit: BoxFit.cover,),

                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Flexible(
                          child: Text(
                            snapshot.data["items"][index]["fullTitle"],
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                        ),
                        Text(
                          snapshot.data["items"][index]["runtimeStr"],
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    )

              ),
            ],
          ),
        ));
  }
}
