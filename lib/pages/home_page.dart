import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/iteam_widget.dart';

class HomePage extends StatelessWidget {
  // const HomePage({ Key? key }) : super(key: key);
  final int days = 30;
  final String name = "Aamir";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(15, (index) => CatalogModel.iteams[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return IteamWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
