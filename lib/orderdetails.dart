import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/search.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Order_details extends StatefulWidget {
  const Order_details({super.key});

  @override
  State<Order_details> createState() => _Order_detailsState();
}

class _Order_detailsState extends State<Order_details> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('My Orders',
        style: TextStyle(color: Colors.white),),
        iconTheme: IconThemeData(color: Colors.white),
        toolbarHeight: 60,
        backgroundColor: Color.fromARGB(221, 22, 22, 22),
        actions: [

         
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Search(),));
              },
              icon: Icon(Icons.search_outlined)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cart(),));
              },
              icon: Icon(Icons.shopping_cart_outlined)),
          )
        ],
      ),
      backgroundColor: Colors.black,
  body: Expanded(
    child: Container(
      height: 165,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 70,right: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Apple iPhone 15 Plus (Yellow, 128 GB)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    Text('Yellow'),
                    Text('₹82,999',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: RatingBar.builder(
                       initialRating: 3,
                       minRating: 1,
                       direction: Axis.horizontal,
                       allowHalfRating: true,
                       itemCount: 5,
                       itemSize: 30,
                       itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                       itemBuilder: (context, _) => Icon(
                         Icons.star,
                         color: Colors.amber,
                       ),
                       onRatingUpdate: (rating) {
                         print(rating);
                       },
                    ),
                  ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 70,right: 5),
                child: Image(
                  height: 70,
                  image: AssetImage('images/iphone.png')),
              )
            ],
          ),
          
        ],
      ),
    ),
  )
      
  
    );
  }
}