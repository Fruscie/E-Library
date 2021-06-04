
import 'package:e_library/Models/buku_model.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'detailPage.dart';

class BukuGrid extends StatelessWidget {
  final int gridCount;
  BukuGrid({@required this.gridCount});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
            crossAxisCount: gridCount,
            children: bukuList.map((buku) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => DetailPage(
                            buku: buku,
                          )));
                },
                child: Card(
                  color: HexColor('#dcd6f7'),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex:2,
                        child: Image.asset(
                          buku.imageAsset,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text(
                              buku.judul,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'By ${buku.author}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rating : ',
                                  style: TextStyle(fontSize: 10),
                                  maxLines: 1,
                                ),
                                Row(
                                    children: List.generate(
                                  5,
                                  (indek) => Icon(
                                    indek < buku.rating
                                        ? Icons.star
                                        : Icons.star_border,
                                    size: 10,
                                  ),
                                )),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }).toList()));
  }
}
