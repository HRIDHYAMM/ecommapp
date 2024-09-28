import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommapp/model/Products/products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // Initialize Firebase Firestore instance
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  late CollectionReference productCollectionReference;


  TextEditingController productnamecontrooler=TextEditingController();
  TextEditingController descriptioncontrooler=TextEditingController();
  TextEditingController imageurlcontroller=TextEditingController();
  TextEditingController pricecontrooler=TextEditingController();


  String category="General";
  String brand="Un_Branded";
  bool offer=false;

  @override
  void onInit() {
    super.onInit();
    productCollectionReference = firestore.collection('Products');
  }

  void addProduct() {
    try {
      DocumentReference doc = productCollectionReference.doc();

      // Create an instance of the Products class
      Products product = Products(
        id: doc.id,
        name:productnamecontrooler.text,
        category: category,
        description: descriptioncontrooler.text,
        offer: offer,
        price: double.tryParse(pricecontrooler.text),
        image: imageurlcontroller.text,
        brand: brand,
      );

      final productJson = product.toJson();
      doc.set(productJson);

      Get.snackbar(
        "Success",
        "Product added successfully",
        colorText: Colors.green,
      );
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        colorText: Colors.red,
      );
      print(e);
    }
  }
}
