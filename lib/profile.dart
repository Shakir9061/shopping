import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/editprofile.dart';
import 'package:flutter_application_1/orders.dart';
import 'package:flutter_application_1/search.dart';
import 'package:flutter_application_1/wishlist.dart';
import 'package:material_symbols_icons/symbols.dart';

class profile extends StatefulWidget {
  
   profile({super.key });

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  List navigate=[Orders(),Wishlist(),Edit_Profile()];
  List text=['Your orders','Wishlist','Edit Profile'];
  List<IconData> icons=[Symbols.orders,Symbols.favorite_rounded,Symbols.account_circle];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('Profile',
        style: TextStyle(color: Colors.white),),
        iconTheme: IconThemeData(color: Colors.white),
        toolbarHeight: 60,
        backgroundColor: Color.fromARGB(221, 22, 22, 22),
        actions: [

       
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Search(),));
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
        
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                
                leading: Icon(icons[index],color: Colors.white,),
                title: Text(text[index],style:TextStyle(color: Colors.white) ),
                 onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return navigate[index];
                  }));
                },
              ),
               Divider(
                thickness: 0.5,
               ),
            ],
          );
         
        },),
      )
    );
  }
}
