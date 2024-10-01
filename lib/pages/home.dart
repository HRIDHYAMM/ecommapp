import 'package:ecommapp/controller/homecontroller.dart';
import 'package:ecommapp/pages/addproduct.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (home) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Product List",style: TextStyle(
              fontSize: 28,
              color: Colors.grey
            ),),
          ),
          body: ListView.builder(
            itemCount: home.product.length,
            itemBuilder: (context,index){
              
            return ListTile(
              trailing: IconButton( icon: Icon(Icons.delete,color: Colors.red,),
              onPressed: (){
           home.product[index].id?? '';
              },
             
              ),
              title: Text(home.product[index].name??''),
              subtitle:Text(home.product[index].price.toString()),
            );
          }),
          floatingActionButton: FloatingActionButton(onPressed: (){
            Get.to(AddproductPage());
          },
          child: Icon(Icons.add),
          ),
        );
      }
    );
  }
  
}