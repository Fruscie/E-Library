
import 'package:e_library/Models/buku_model.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'detailPage.dart';

class BukuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Buku buku = bukuList[index];
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => DetailPage(
                      buku: buku,
                    )));
          },
          child: Card(
            color: HexColor('#dcd6f7'),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.asset(buku.imageAsset),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          buku.judul,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('By ${buku.author}'),
                        Row(
                          children: [
                            Text(
                              'Rating : ',
                              style: TextStyle(fontSize: 17),
                            ),
                            Row(
                                children: List.generate(
                              5,
                              (indek) => Icon(
                                indek < buku.rating
                                    ? Icons.star
                                    : Icons.star_border,
                                size: 17,
                              ),
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: bukuList.length,
    );
  }
}