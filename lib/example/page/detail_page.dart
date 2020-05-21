import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String title;
  final String tag;
  final String detail;
  final Function setFavorite;
  final bool isFavorite;

  DetailPage({
    Key key,
    @required this.title,
    @required this.tag,
    @required this.detail,
    @required this.isFavorite,
    @required this.setFavorite,
  });

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFavorite;
  @override
  void initState() {
    isFavorite = widget.isFavorite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Product")),
      body: Center(
        child:  Row(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.title,
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  widget.tag,
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  widget.detail,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.favorite),
              color: isFavorite ? Colors.red : null,
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                  widget.setFavorite(isFavorite);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
