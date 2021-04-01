import 'package:flutter/material.dart';
import 'package:practice_carousel/widget/nav-drawer.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
          title: Text('link_fam.'),
          backgroundColor: Colors.pink.shade50
      ),
      body:Center(child: Image.asset('assets/babysleep/babysleep3.jpg'))
    );
  }
}