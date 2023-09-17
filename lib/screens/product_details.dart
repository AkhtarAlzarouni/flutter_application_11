import 'package:flutter/material.dart';
import 'package:flutter_application_11/models/product.dart';

class ProudctsDetail extends StatelessWidget {
   ProudctsDetail({super.key, required this.product});
  Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Description"),
        backgroundColor: Colors.amber,

      ),
      body: Column(children: [
        Hero(
          tag: product.name!,
          child: Image.network(product.image!,width: 400,height: 400,)),
        Text(product.name!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        Text(product.category!),
        Text(product.price!.toString()),
      ]),
    );
  }
}