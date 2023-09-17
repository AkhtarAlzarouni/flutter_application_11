import 'package:flutter/material.dart';
import 'package:flutter_application_11/models/product.dart';
import 'package:flutter_application_11/screens/product_details.dart';

class ProudctsScreen extends StatelessWidget {
  ProudctsScreen({super.key});
  List<Product> products =[
  Product(name: "Shose1",category: "Shoses" ,price: 30.0,image: "https://m.media-amazon.com/images/I/610fN3RyKFL._AC_UY1000_.jpg"),
  Product(name: "bag1",category: "back bag" ,price: 56.0,image: "https://m.media-amazon.com/images/I/81PtF30TLUL._AC_UY1100_.jpg"),
  Product(name: "dress1",category: "Children's dress" ,price: 78.6,image: "https://m.media-amazon.com/images/I/41qvkih2NFL._AC_UF1000,1000_QL80_.jpg"),
  Product(name: "Shose",category: "Shoses" ,price: 30.0,image: "https://m.media-amazon.com/images/I/610fN3RyKFL._AC_UY1000_.jpg"),
  Product(name: "bag",category: "back bag" ,price: 56.0,image: "https://m.media-amazon.com/images/I/81PtF30TLUL._AC_UY1100_.jpg"),
  Product(name: "dress",category: "Children's dress" ,price: 78.6,image: "https://m.media-amazon.com/images/I/41qvkih2NFL._AC_UF1000,1000_QL80_.jpg"),
  
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( title: Text("Proudcts"),
      backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
      
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => ProudctsDetail(
                product:products[index],
              ),));
            },
            leading:Hero(
              tag: products[index].name!,

              child: Image.network(products[index].image!,width: 50,height: 50,)) ,
            title: Text(products[index].name!),
            subtitle: Text(products[index].category!),
            trailing: Text(products[index].price!.toString()),
          );
        },
       itemCount: products.length,
      ),
    );
  }
}