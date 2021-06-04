import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'BukuGrid.dart';
import 'BukuList.dart';

class MainPage extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#f4eeff'),
      appBar: AppBar(
        title: Center(
            child: Text(
          'E - Library',
          style: TextStyle(fontSize: 20),
        )),
        backgroundColor: HexColor('#424874'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            print(constraints.maxWidth);
            return BukuList();
          } else if (constraints.maxWidth <= 1200) {
            print(constraints.maxWidth);
            return BukuGrid(gridCount: 4);
          } else {
            print(constraints.maxWidth);
            return BukuGrid(gridCount: 6);
          }
        },
        // child: BukuList()
      ),
    );
  }
}