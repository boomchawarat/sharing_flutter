import 'package:flutter/material.dart';
import 'package:sharingflutter/example/page/detail_page.dart';

class CardContent extends StatefulWidget {
  final String title;
  final String tag;
  final String detail;

  CardContent({
    Key key,
    @required this.title,
    @required this.tag,
    @required this.detail,
  });

  @override
  _CardContentState createState() => _CardContentState();
}

class _CardContentState extends State<CardContent> {
  bool isFavorite;

  @override
  void initState() {
    print("Log : initState");
    isFavorite = true;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("Log : didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    print("Log : dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 500,
      height: 150,
      child: Card(
        elevation: 10,
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(
                          title: widget.title,
                          detail: widget.detail,
                          isFavorite: isFavorite,
                          tag: widget.tag,
                          setFavorite: (bool isFavoriteDetail) {
                            setState(() {
                              isFavorite = isFavoriteDetail;
                            });
                          },
                        )));
          },
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Container(
                  child: Image.network(
                    "http://www.takemotopkg.com/user_data/packages/default/img/slide/03_Packaging_Solutions_Standout_12.jpg",
                    height: 150,
                  ),
                ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(widget.title, style: TextStyle(fontSize: 30)),
                          IconButton(
                            icon: const Icon(Icons.favorite),
                            color: isFavorite ? Colors.red : null,
                            onPressed: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 5),
                        padding: EdgeInsets.all(5),
                        color: Colors.green,
                        child: Text(widget.tag),
                      ),
                      Text(widget.detail, style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
