import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Container(
        
        width: double.maxFinite,
        margin: EdgeInsets.all(20),
       
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
          children: [
            Text("Welcome Back !",style: TextStyle(
              fontSize: 25,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
            label: Text("Enter Your Mobile number"),
            prefixIcon: Icon(Icons.phone_android_outlined),
            hintText: "Mobile Number",
            focusedBorder:OutlineInputBorder(
           
                  borderSide: BorderSide(color: Colors.grey)
                ),
                enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey)
                ),
              
              
                
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              
             style: ElevatedButton.styleFrom(
            
              foregroundColor: Colors.white,
              backgroundColor: Colors.deepPurple
             ),
              onPressed: (){}, child: Text("Login")),
              SizedBox(height: 10,),
              TextButton(onPressed: (){}, child: Text("Register New Account"))
          ],
        ),
       ),
     ),
    );
  }
}