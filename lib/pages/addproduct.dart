import 'package:ecommapp/widget/dropdownbtn.dart';
import 'package:flutter/material.dart';

class AddproductPage extends StatelessWidget {
  const AddproductPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                 Flexible(child: Dropdownbtn(items: ["Cat1","Cat2","Cat3"],SelectedItemName: "Category",
                onChangedValue: (selectedItem){
                  print(selectedItem);
                },
                 )),
                   Flexible(child: Dropdownbtn(items: ["brand1","brand2","brand3"],SelectedItemName: "Brand",
                   onChangedValue: (selectedItem){
                    print(selectedItem);
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
              Dropdownbtn(items: ["Yes","No"],SelectedItemName: "Offer ?", 
              onChangedValue: (selectedItem){
                print(selectedItem);
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
                onPressed: (){}, child: Text("Add Product"))
            ],
          ),
        ),
      ) ,
    );
  }
}