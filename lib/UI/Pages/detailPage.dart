import 'package:e_library/Models/buku_model.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailPage extends StatelessWidget {
  final Buku buku;

  DetailPage({@required this.buku});

  @override
  Widget build(BuildContext context) {
    var rating = buku.rating;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(buku.judul),
        backgroundColor: HexColor('#424874'),
      ),
      backgroundColor: HexColor('#f4eeff'),
      body: ListView(padding: EdgeInsets.only(left: 30, right: 30), children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: Hero(
                tag: buku.judul,
                child: Image.asset(buku.imageAsset)
              ),
            ),
            SizedBox(height: 10),
            Text(
              buku.judul,
              textScaleFactor: 2,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.brown),
            ),
            Text('Author : ${buku.author}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Published year ${buku.tahun}'),
                Row(
                    children: List.generate(
                        5,
                        (index) => Icon(
                            index < rating ? Icons.star : Icons.star_border)))
              ],
            ),
            Divider(
              height: 15,
              thickness: 5,
            ),
            Text(
              '     ${buku.isi}',
              textAlign: TextAlign.justify,
              textScaleFactor: 1.5,
              softWrap: true,
            )
          ],
        ),
      ]),
    );
  }
}
