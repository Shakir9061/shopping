import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iphonepage extends StatefulWidget {
  const iphonepage({super.key});

  @override
  State<iphonepage> createState() => _iphonepageState();
}

class _iphonepageState extends State<iphonepage> {
   bool _isFavorited = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children:[ Container(
                  height: 250,
                  width: double.infinity,
                  color: Colors.white,
                 
                ),
                Center(
                  child: Image(
                    height: 250,
                    image: AssetImage('images/iphone 14.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30,top: 30),
                  child: InkWell(
                    onTap: () {
                      _toggleFavorite();
                    },
                    child: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border,
            color: _isFavorited ? Colors.red : null,size: 35,)),
                )
                ]
              ),
              Divider(
                thickness: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text('Apple iPhone 14 (Starlight, 128 GB)',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Text('₹58,999',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text('₹69,900',style: TextStyle(decoration: TextDecoration.lineThrough),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text('15% off',style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5,top: 10),
                child: Text('Specifications',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
              ),
              Image(image: AssetImage('images/14spec.png')),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  children: [
                    ElevatedButton(onPressed: () {
                      
                    }, child: Text('Add to cart')),
                    ElevatedButton(onPressed: () {
                      
                    },
                    
                     child: Text('Buy Now')),
                  ],
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}