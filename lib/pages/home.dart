import 'package:ecommapp/main.dart';
import 'package:ecommapp/pages/addproduct.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';
import 'package:get/instance_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        centerTitle: true,
        title: Text("Product List"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context,index){
        return ListTile(
          title: Text("Product name"),
          subtitle: Text("price"),
          trailing: IconButton(onPressed: (){
            
          }, icon: Icon(Icons.delete)),
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(AddProductPage());
      },
      child: Icon(Icons.add),
      ),
    
    );
  }
}