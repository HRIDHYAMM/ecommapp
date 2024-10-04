import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomerProductdescription extends StatelessWidget {
  const CustomerProductdescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
        automaticallyImplyLeading: false,
        title: Text("Product Details"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
                 ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                   child: Image.network('https://images.pexels.com/photos/19090/pexels-photo.jpg?cs=srgb&dl=pexels-webdonut-19090.jpg&fm=jpg'
                   ,
                   
                   fit: BoxFit.cover,
                   width: double.infinity,
                   height: 200,
                   
                   ),
                 ),

             
SizedBox(
  height: 10,
),
                 Text("Puma Footwares",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                 
                 ),),
          

SizedBox(
  height: 10,
),
                 Text("Product Description",style: TextStyle(
                  fontSize: 16,
                 
                 ),),


SizedBox(
  height: 10,
),
                 Text("Rs : 300",style: TextStyle(
                  fontSize: 16,
                 color: Colors.green
                 ),),

                 SizedBox(
                  height: 10,
                 ),

                 TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: "Description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                 ),
                  SizedBox(
                  height: 10,
                 ),

                 SizedBox(
                  width: double.infinity,
                   child: ElevatedButton(
                    
                    style: ElevatedButton.styleFrom(
                   foregroundColor: Colors.white,
                   backgroundColor: Colors.blueAccent
                   
                    ),
                    onPressed: (){}, child: Text("Buy Now")),
                 )
          ],
        
        ),
      ),
    );
  }
}