import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/search.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Edit_Profile extends StatefulWidget {
  const Edit_Profile({super.key});

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
  XFile? picked;
  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile',style: TextStyle(color: Colors.white),),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [InkWell(
                onTap: () {
                  setState(() {
                                      image==null?Text(''):Image.file(image!);

                  });
                },
                child: CircleAvatar(
                  radius: 60,
                backgroundImage: AssetImage('images/man.jpg'),
                ),
              ),
              InkWell(
                onTap: () async {
                 ImagePicker pick=ImagePicker();
                 picked= await pick.pickImage(source: ImageSource.gallery);
                 setState(() {
                                    image=File(picked!.path);

                 });
                },
                child: Image(
                  height: 35,
                  image: AssetImage('images/plus.png')),
              )
              ]
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 30),
              child: Row(
                children: [
                  Text(
                    'Name',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 350,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  suffixText: 'Change',
                  suffixStyle: TextStyle(color: Color.fromARGB(255, 42, 45, 230)),
                  border: OutlineInputBorder()),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 30),
              child: Row(
                children: [
                  Text(
                    'Email',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 350,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    suffixText: 'Change',
                      suffixStyle:
                          TextStyle(color: Color.fromARGB(255, 42, 45, 230)),
                      border: OutlineInputBorder()),
                ),
              ),
            ),
              Padding(
              padding: const EdgeInsets.only(top: 15, left: 30),
              child: Row(
                children: [
                  Text(
                    'Current Password',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 350,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    suffixText: 'Change',
                      suffixStyle:
                          TextStyle(color: Color.fromARGB(255, 42, 45, 230)),
                      border: OutlineInputBorder()),
                ),
              ),
            ),
              Padding(
              padding: const EdgeInsets.only(top: 15, left: 30),
              child: Row(
                children: [
                  Text(
                    'New Password',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 350,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    suffixText: 'Change',
                      suffixStyle:
                          TextStyle(color: Color.fromARGB(255, 42, 45, 230)),
                      border: OutlineInputBorder()),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: SizedBox(
                width: 100,
                child: FloatingActionButton(
                  backgroundColor: Colors.blue,
                  onPressed: (){
                
                },
                
                 child: Text('Save',style: TextStyle(fontSize: 18),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
