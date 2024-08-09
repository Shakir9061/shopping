import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/orderdetails.dart';
import 'package:flutter_application_1/search.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          SizedBox(
            height: 70,
            child: ListTile(
             
              tileColor: Colors.black,
              leading: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: 300,
                  height: 50,
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Search your orders here',hintStyle: TextStyle(color: Colors.white70),
                      prefixIcon: Icon(Icons.search,color: Colors.white70,),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(
            thickness: 0.5,
          ),
          ListTile(
             onTap: () {
                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Order_details(),));

                });
              },
            tileColor: Colors.white,
            leading: Image(image: AssetImage('images/iphone.png')),
            title: Text('Delivered On Feb 10, 2024',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            subtitle: Text('Apple iPhone 15 (Yellow, 128 GB)'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          )
        ],
      ),
    );
  }
}