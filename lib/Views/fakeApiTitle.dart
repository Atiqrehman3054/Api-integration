

import 'package:api_service/Models/FakeApi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApiTitle extends StatelessWidget {


 final Product item;
 ApiTitle(this.item);


  @override
  Widget build(BuildContext context) {

    return ClipRRect(

      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: Colors.grey,
        height: 200,
        width: 380,
        child: Column(
          children: [
            Text(item.title),
            Image.network(item.image,height: 100,width: 100,),

          ],
        ),
      ),
    );
  }
}
