import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/welcome.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Home extends StatefulWidget {
  const Home({super.key,});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool passwordvisibility = false;
  var formkey = GlobalKey<FormState>();
  var name=TextEditingController();
  var email=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sign Up',
                  style: TextStyle(fontSize: 35, color: Colors.white)),
              Padding(
                padding: const EdgeInsets.only( top: 40),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    controller: name,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Field cannot be empty';
                      }
                    },
                                          style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_2_outlined),
                        hintText: 'Enter Your Name',
                        hintStyle: TextStyle(color: Colors.white30),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only( top: 20),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    controller: email,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Field cannot be empty';
                      }
                    },
                                          style: TextStyle(color: Colors.white),
          
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        hintText: 'Enter Your Email',
                        hintStyle: TextStyle(color: Colors.white30),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only( top: 30),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Field cannot be empty';
                      }
                    },
                    style: TextStyle(color: Colors.white),
                    obscureText: passwordvisibility,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        hintText: 'Enter Your Password',
                        suffixIcon: IconButton(
                          icon: Icon(passwordvisibility
                              ? Symbols.visibility_off
                              : Symbols.visibility),
                          onPressed: () {
                            setState(() {
                              passwordvisibility = !passwordvisibility;
                            });
                          },
                        ),
                        hintStyle: TextStyle(color: Colors.white30),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only( top: 40),
                child: SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState?.validate() ?? false) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Page1(),
                            ));
                      }
                      return null;
                    },
                    child: Text(
                      'Create Account',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 213, 118, 229))),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only( top: 10),
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 5),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ));
                        },
                        child: Text(
                          ' Sign in',
                          style: TextStyle(
                              color: Color.fromARGB(255, 42, 45, 230)),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
