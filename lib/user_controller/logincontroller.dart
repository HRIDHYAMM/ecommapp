import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommapp/usermodel/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Logincontroller extends GetxController{

FirebaseFirestore firebaseFirestore=FirebaseFirestore.instance;
late CollectionReference userCollection;

TextEditingController namecontroller=TextEditingController();
TextEditingController mobilenocontroller=TextEditingController();
@override
  void onInit() {
    userCollection=firebaseFirestore.collection('users');
    // TODO: implement onInit
    super.onInit();
  }

  addUser(){
  try{
    if(namecontroller.text.isEmpty || mobilenocontroller.text.isEmpty){
      Get.snackbar("Error", "please fill this field");
      return;
    }
      DocumentReference doc=userCollection.doc();

      User user=User(
        id:doc.id,
        name: namecontroller.text,
        mobileno:int.tryParse(mobilenocontroller.text)
      );
      final userjson=user.toJson();
      doc.set(userjson);
      Get.snackbar("Sucess", "new user added sucessfully");
  }catch(e){
    Get.snackbar("Error", e.toString(),);
  }
  }
}