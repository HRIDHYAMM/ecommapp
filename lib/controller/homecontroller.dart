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


  String category="Category";
  String brand="Brand";
  bool offer=false;

  List<Products>product=[];

  @override
  void onInit() async{
    super.onInit();
    productCollectionReference = firestore.collection('Products');
    await fetchProduct();
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
      SetvalueasDefalut();
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        colorText: Colors.red,
      );
      print(e);
    }
  }
  SetvalueasDefalut(){
 productnamecontrooler.clear();
    descriptioncontrooler.clear();
    imageurlcontroller.clear();
 pricecontrooler.clear();

  category="Category";
   brand="Brand";
 offer=false;
 update();
  }
 
  fetchProduct()async{
   try{
     QuerySnapshot productSnapshot=await productCollectionReference.get();
    final List<Products>retriveproducts=productSnapshot.docs.map((doc)=>Products.fromJson(doc.data() 
    as Map<String,dynamic>)).toList();
    product.clear();
    product.assignAll(retriveproducts);
    Get.snackbar("Suceess", "Product fetch suceesfully");
   }catch(e){
Get.snackbar("Error", e.toString());
   }finally{
update();
   }
  }

  deleteproduct(String id)async{
     try{
      await productCollectionReference.doc(id).delete();
     fetchProduct();
    
     }catch(e){
 Get.snackbar("Error", e.toString(),colorText: Colors.red);
     }
  }
}
