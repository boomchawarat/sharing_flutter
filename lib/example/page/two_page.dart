import 'package:flutter/material.dart';
import 'package:sharingflutter/example/widget/card_content.dart';

class TwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Two Page'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'Product List',
                  style: TextStyle(fontSize: 30),
                )),
            Expanded(
              child: ListView(
                children: <Widget>[
                  CardContent(
                      title: "FPC-150", tag: "短納期・小ロット対応", detail: "Detail"),
                  CardContent(title: "FPC-250", tag: "エコ", detail: "Detail"),
                  CardContent(title: "FPC-450", tag: "エコ", detail: "Detail"),
                ],
              ),
            ),
          ],
        ));
  }
}
