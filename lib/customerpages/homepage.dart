import 'package:ecommapp/customer_product.dart';
import 'package:ecommapp/widget/customer_multidropdownbtn.dart';
import 'package:ecommapp/widget/dropdownbtn.dart';
import 'package:flutter/material.dart';

class CustomerHomepage extends StatelessWidget {
  const CustomerHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("FootWear Store",style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
           height: 50,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(6.0),
                child: Chip(label: Text("Category")),
              );
            }),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Flexible(
                child: Dropdownbtn(items: ["Rs:low to high","Rs:high to low"], 
                SelectedItemName: 'Sort', onChangedValue: (selected ) {  },),
              ),
               Flexible(child: CustomerMultidropdownbtn(items: [
           "item11",
           "item22",
           "item33",
           "item44"
               ], 
               OnselectChnaged: (selectedItems ) {  },))
            ],
          ),
SizedBox(
  height: 10,
),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8
                ), itemBuilder: (context,index){
                  return  CustomerProduct(
                    name: 'Puma',
                     imageurl: 'https://images.pexels.com/photos/19090/pexels-photo.jpg?cs=srgb&dl=pexels-webdonut-19090.jpg&fm=jpg', 
                     offertag: '50% Off', 
                     price: 200,
                    
                    
                  );
                }),
            ),
          )
        ],
      ),
    );
  }
}