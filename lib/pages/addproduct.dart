import 'package:flutter/material.dart';

import '../widget/dropdownbtn.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
        automaticallyImplyLeading: false,
        title: Text("Add Product",style: TextStyle(color: Colors.black38),),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          child: Column(
            
               crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Add New Product",style: TextStyle(fontSize: 28,color: Colors.black),),
              SizedBox(
                height: 20,
              ),
              
              TextField(
                decoration:InputDecoration(
                  label: Text("Product Name"),
                  hintText: "Product Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                )
              ),
               SizedBox(
                height: 10,
              ),
              
             TextField(
              maxLines: 5,
                decoration:InputDecoration(
                  
                  label: Text("Product Name"),
                     hintText: "Description",
                    
                  border: OutlineInputBorder(
                    
                    borderRadius: BorderRadius.circular(10)
                  )
                )
              ),
               SizedBox(
                height: 10,
              ),
              
             TextField(
          
                decoration:InputDecoration(
                  
                  label: Text("Enter your image url"),
                     hintText: "Image Url",
                    
                  border: OutlineInputBorder(
                    
                    borderRadius: BorderRadius.circular(10)
                  )
                )
              ),
              SizedBox(
                height: 10,
              ),
       Row(
        children: [
            Flexible(child: DropDownBtn()),
               Flexible(child: DropDownBtn()),
        ],
       ),
       SizedBox(
                height: 10,
              ),
       Text("Offer Product"),
       SizedBox(
                height: 10,
              ),
       DropDownBtn(),
        SizedBox(
                height: 10,
              ),
       ElevatedButton(onPressed: (){}, child:Text("Add Product"))

            ],
            
          ),
        ),
      ),
    );
  }
}