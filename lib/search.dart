import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(
           title: Text('Search',
        style: TextStyle(color: Colors.white),),
        iconTheme: IconThemeData(color: Colors.white),
        toolbarHeight: 60,
        backgroundColor: Color.fromARGB(221, 22, 22, 22),
        actions: [
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 60),
              child: SizedBox(
                width: 300,
                height: 50,
                child: TextFormField(
                   style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    
                     hintText: 'Search for products & brand',
                hintStyle: TextStyle(color: Colors.white70),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white70,
                ),
                    border: OutlineInputBorder()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}