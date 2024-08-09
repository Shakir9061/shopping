import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  var formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Forget Password ?',style: TextStyle(fontSize: 35,color: Colors.white),),
               Padding(
                      padding: const EdgeInsets.only( top: 60),
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
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        width: 300,
                        child: ElevatedButton(onPressed: (){
                        if(formkey.currentState?.validate()??false){
                          return null;
                        }
                        }, 
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 213, 118, 229))),
                        child: Text('Send Reset Link',style: TextStyle(color: Colors.white,fontSize: 15),)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Back to ',style:TextStyle(color: Colors.white)),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                            },
                            child: Text(' Sign In',style: TextStyle(color:  Color.fromARGB(255, 42, 45, 230)),))
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