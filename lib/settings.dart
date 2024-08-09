import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/search.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(
            title: Text('Settings',
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
      body: Column(
        children: [
          ListTile(
            leading: Icon(Symbols.translate,color: Colors.white,),
            title: Text('Language Settings',style: TextStyle(color: Colors.white),),
          ),
          Divider(
            thickness: 0.5,
          ),
            ListTile(
            leading: Icon(Symbols.notifications,color: Colors.white,),
            title: Text('Notification Settings',style: TextStyle(color: Colors.white),),
          ),
            Divider(
            thickness: 0.5,
          ),
        ],
      ),
      
    );
  }
}