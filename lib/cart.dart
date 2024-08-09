import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Cart',
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          toolbarHeight: 60,
          backgroundColor: Color.fromARGB(221, 22, 22, 22),
        ),
        body: Column(
          
          children: [
            Container(
              height: 100,
              child: ListTile(
                tileColor: Colors.white,
                leading: Image(
                    height: 70,
                    width: 40,
                    image: AssetImage('images/iphone 14.png')),
                title: Text(
                  'Apple iPhone 14 (Starlight, 128 GB)',
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'M.R.P: ',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '₹69,900',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            decorationThickness: 2,
                          ),
                        ),
                        Text(
                          ' ₹56,999',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text('Qty')
                  ],
                ),
              ),
            ),
            Divider(
              height: 0,
              thickness: 1,
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 205,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                  Icon(Icons.delete_outline),
                  Text(
                    'Remove',
                    style: TextStyle(fontSize: 18),
                  ),
                                      ],
                                    ),
                ),
                Container(
                  height: 40,
                  width: 205,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Symbols.bolt),
                      Text(
                                          'Buy Now',
                                          style: TextStyle(fontSize: 18),
                                        ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(onPressed: () {
              
            }, child: Text('Buy Now',style: TextStyle(color: Colors.black),))
          ],
        ));
  }
}
