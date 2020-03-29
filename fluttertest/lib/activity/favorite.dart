import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  Favorite({Key key}) : super(key: key);

  @override
  _Favorite createState() => _Favorite();
}

class _Favorite extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0),
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image.asset(
                "asset/imgserver/test.jpg",
                //width: 130,
                //height: 100,
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        color: Colors.red,
                        padding:
                            EdgeInsets.only(right: 0.0, left: 13.0, top: 0.0),
                        child: Text(
                          "Name :Nguyen Van A asds asdsa asdsa asdsad asdsad ádsadsad",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.only(right: 0.0, left: 13.0, top: 13.0),
                        child: Text(
                          "Email: khanh@gmail.com",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
      ],
    );
  }
}
