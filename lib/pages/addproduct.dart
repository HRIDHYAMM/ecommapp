import 'package:ecommapp/controller/homecontroller.dart';
import 'package:ecommapp/widget/dropdownbtn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddproductPage extends StatelessWidget {
  const AddproductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (addproduct) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.grey,)),
            centerTitle: true,
            title: Text("Add Product",style: TextStyle(
              fontSize: 27,
              color: Colors.grey
            ),),
          ),
          body:SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: Text("Add New Products",style: TextStyle(
                    fontSize: 27,
                    color: Colors.indigo
                  ),)),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: addproduct.productnamecontrooler,
                    decoration: InputDecoration(
                 
                      hintText: "Product Name",
                      hintStyle: TextStyle(
                        color: Colors.grey
                      ),
                      labelText: "Name",
                      labelStyle:  TextStyle(
                        color: Colors.grey
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                      ),
                      border:OutlineInputBorder(
                        
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: addproduct.descriptioncontrooler,
                   maxLines: 5,
                    decoration: InputDecoration(
                 
                      hintText: "Product Description",
                      hintStyle: TextStyle(
                        color: Colors.grey
                      ),
                      labelText: "Description",
                      labelStyle:  TextStyle(
                        color: Colors.grey
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                      ),
                      border:OutlineInputBorder(
                        
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: addproduct.imageurlcontroller,
                    decoration: InputDecoration(
                 
                      hintText: "Image URL",
                      hintStyle: TextStyle(
                        color: Colors.grey
                      ),
                      labelText: "Image URL",
                      labelStyle:  TextStyle(
                        color: Colors.grey
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                      ),
                      border:OutlineInputBorder(
                        
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: addproduct.pricecontrooler,
                    decoration: InputDecoration(
                 
                      hintText: "Product Price",
                      hintStyle: TextStyle(
                        color: Colors.grey
                      ),
                      labelText: "Price",
                      labelStyle:  TextStyle(
                        color: Colors.grey
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                      ),
                      border:OutlineInputBorder(
                        
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                Row(
                  children: [
                     Flexible(child: Dropdownbtn(items: ["Cat1","Cat2","Cat3"],
                     SelectedItemName: addproduct.category,
                     
                    onChangedValue: (selectedItem){
                   
                      addproduct.category=selectedItem ?? "General";
                      addproduct.update();
                    },
                     )),
                       Flexible(child: Dropdownbtn(items: ["brand1","brand2","brand3"],
                       SelectedItemName: addproduct.brand,
                       onChangedValue: (selectedItem){
                      
                        addproduct.brand=selectedItem ?? "Un_Branded";
                        addproduct.update();
                       },
                        ))
                  ],
                ),
                 SizedBox(
                    height: 10,
                  ),
                Text("Offer Price?"),
                SizedBox(
                    height: 10,
                  ),
                  Dropdownbtn(items: ["true","false"],
                  SelectedItemName:addproduct.offer.toString(), 
                  onChangedValue: (selectedItem){
               
                    addproduct.offer=bool.tryParse(selectedItem ??'false') ?? false;
                    addproduct.update();
                  },
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.black
                   ),
                    onPressed: (){
                      addproduct.addProduct();
                    }, child: Text("Add Product"))
                ],
              ),
            ),
          ) ,
        );
      }
    );
  }
}