import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  // const HomePage({ Key? key }) : super(key: key);
  final int days = 30;
  final String name = "Aamir";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("MOHAMMAD You and $name Most $days Welcome"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
