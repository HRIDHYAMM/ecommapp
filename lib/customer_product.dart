import 'package:flutter/material.dart';

class CustomerProduct extends StatelessWidget {
  final String name;
  final String imageurl;
  final double price;
  final String offertag;
  final Function onTap;
  const CustomerProduct({super.key, required this.name, required this.imageurl, required this.price, required this.offertag, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap();
      },
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
               
             Image.network(
                   height: 120,
                width: double.infinity,
                  fit: BoxFit.cover,
                  imageurl),
          SizedBox(
            height: 5,
          ),
                Text(name,style: TextStyle(fontSize: 16),overflow: TextOverflow.ellipsis,),
              SizedBox(
            height: 5,
          ),
                Text("Rs:$price".toString(),style: TextStyle(
                  fontSize: 16,
                 
                ),),
                  SizedBox(
            height: 5,
          ),
             
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(4)
            ),
            child: Text(offertag,style: TextStyle(fontSize: 12,color: Colors.white),),
          )
              
            ],
          ),
        ),
      ),
    );
  }
}