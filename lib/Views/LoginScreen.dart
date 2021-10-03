import 'package:api_service/Controllers/LoginController.dart';
import 'package:api_service/Models/LoginModel.dart';
import 'package:api_service/Views/MoiveApp.dart';
import 'package:api_service/Views/SecondScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';






TextEditingController namecontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();





class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
    //   backgroundColor: Colors.red,
    //   body: Container(
    //     alignment: Alignment.center,
    //     padding: const EdgeInsets.all(8.0),
    //     child: (_Album == null) ? buildColumn() : buildFutureBuilder(),
    //   ),
    //
    // );

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("My name is atiq", style: TextStyle(color: Colors.amber),),
              SizedBox(
                height:20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    controller: namecontroller,
                    decoration: InputDecoration(
                      labelText: "email",
                      border: OutlineInputBorder(),

                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  TextField(
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                      labelText: "password",
                      border: OutlineInputBorder(),



                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(onPressed: () async{
                      final gettoken = await ApiService().postRequst(namecontroller.text, passwordcontroller.text);

                   if(gettoken["access_token"]==true){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("succes ! your token id is"),backgroundColor: Colors.green,));
                        Future.delayed(Duration(seconds: 1),(){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=> MovieApp()));
                        });

                      }
 else{
                     return
                       // CircularProgressIndicator();
                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("error"),backgroundColor: Colors.red,));


                   }


                    },
                      child: Text("Login"),),
                  )

                ],
              ),



              // Image.network("https://i.pinimg.com/474x/a7/30/e0/a730e0dec7f98bc11e199d7b31f22f66.jpg"),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     TextField(
              //       controller: namecontroller,
              //       decoration: InputDecoration(
              //         labelText: "Name",
              //         border: OutlineInputBorder(),
              //
              //
              //
              //       ),
              //     ),
              //     SizedBox(
              //       height: 30,
              //     ),
              //
              //     TextField(
              //       controller: passwordcontroller,
              //       decoration: InputDecoration(
              //         labelText: "password",
              //         border: OutlineInputBorder(),
              //       ),
              //     ),
              //     SizedBox(
              //       height: 30,
              //     ),
              //
              //
              //
              //
              //     // Container(
              //     //   height: 50,
              //     //   width: MediaQuery.of(context).size.width,
              //     //   child: ElevatedButton(onPressed: () async{
              //     //     // final gettoken = await ApiService().postRequst(namecontroller.text, passwordcontroller.text);
              //     //     final verfiy = await LoginController().FetchingData(, passwordcontroller.text)
              //     //
              //     //     if(gettoken['token']!=null){
              //     //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("succes ! your token id is ${gettoken['token']}"),backgroundColor: Colors.green,));
              //     //       Future.delayed(Duration(seconds: 2),(){
              //     //         Get.to(ApiIntgeration());
              //     //       });
              //     //
              //     //
              //     //     }else
              //     //       return   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("error "),backgroundColor: Colors.red,));
              //     //
              //     //
              //     //   },
              //     //     child: Text("Login"),),
              //     // )
              //
              //
              //
              //
              //   ],
              // ),
            ],
          ),
        ),
      ),
      );

  }
//   Column buildColumn() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         TextField(
//           controller: _controller,
//           decoration: const InputDecoration(hintText: 'Enter Title'),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               _Album = createAlbum(_controller.text);
//             });
//           },
//           child: const Text('Create Data'),
//         ),
//       ],
//     );
//   }
//
//   FutureBuilder<Login> buildFutureBuilder() {
//     return FutureBuilder<Login>(
//       future: _Album,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return Text(snapshot.data.user);
//         } else if (snapshot.hasError) {
//           return Text('${snapshot.error}');
//         }
//
//         return const CircularProgressIndicator();
//       },
//     );
//   }
// }
}
