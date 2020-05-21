import 'package:flutter/material.dart';
import 'package:sharingflutter/example/page/two_page.dart';

class FirstPage extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.network(
                  'http://www.takemotopkg.com/user_data/packages/default/img/logo-png.png'),
              height: 250,
              width: 250,
            ),
            Container(
              child: Text(
                "Press the start button",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TwoPage()));
                },
                child: Text("Start App"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}