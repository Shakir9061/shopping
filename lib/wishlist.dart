import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/search.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        title: Text('Wishlist',style: TextStyle(color: Colors.white),),
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
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 220,
              width: 150,
              child: Card(
                color: Colors.white,
                child: Column(
                  
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        height: 80,
                        image: AssetImage('images/pixel8.png')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text('Google Pixel 8 (8 GB RAM)'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: Text('₹75,999',style: TextStyle(fontWeight: FontWeight.bold),),
            
                    ),
                    ElevatedButton(onPressed: () {
                      
                    }, 
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white54)),
                    child: Text('Add to cart',style: TextStyle(color: Colors.blue),))
                  ],
                ),
              ),
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(top: 10),
             child: SizedBox(
                height: 220,
                width: 150,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    
                    children: [
                      Image(image: AssetImage('images/s24.png')),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text('SAMSUNG Galaxy S24 5G (8 GB RAM)'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Text('₹79,999',style: TextStyle(fontWeight: FontWeight.bold),),
              
                      ),
                      ElevatedButton(onPressed: () {
                        
                      }, 
                      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white54)),
                      child: Text('Add to cart',style: TextStyle(color: Colors.blue),))
                    ],
                  ),
                ),
              ),
           ),
        ],
      ),
    ],
  ),
    );
  }
}