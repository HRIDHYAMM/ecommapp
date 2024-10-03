import 'package:flutter/material.dart';

class Registerpage extends StatelessWidget {
  const Registerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Create Your Account !! ",style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple
            ),),

            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text("Enter  Name"),
                hintText: "Your Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide:BorderSide(color: Colors.grey),
                 
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                   borderRadius: BorderRadius.circular(10)
                )
              ),
            ),
             SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text("Enter  Mobile Number"),
                hintText: "Mobile Number",
                prefixIcon: Icon(Icons.phone_android_outlined),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide:BorderSide(color: Colors.grey),
                 
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                   borderRadius: BorderRadius.circular(10)
                )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.deepPurple
              ),
              onPressed: (){}, child: Text("Send OTP")),
              SizedBox(height: 10,),
              TextButton(onPressed: (){}, child: Text("Login",style: TextStyle(
                color: Colors.deepPurple
              ),))
          ],
        ),
      ),
    );
  }
}