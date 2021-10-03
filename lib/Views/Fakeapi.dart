import 'package:api_service/Controllers/FakeApiController.dart';
import 'package:api_service/Views/fakeApiTitle.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class FakeApi extends StatelessWidget {

FakeApiController Controller = Get.put(FakeApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FakeApi"),),

      body: SafeArea(
        child: ListView(
        children: [
          Obx(() {
            if(Controller.isLoading.value)
          return Center(child: CircularProgressIndicator(),);
            else
          return Container(
            height: 400,
            child: ListView.builder(
                itemCount: Controller.list.length,
                itemBuilder: (context,index){


            return  ApiTitle(Controller.list[index]);




              },

              ),
          );
          }
          ),
      ],
    ),
    ),

    );
  }
}
