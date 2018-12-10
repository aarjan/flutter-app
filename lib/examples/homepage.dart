import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Lake Tilicho",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'Mugu, Nepal',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  )
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red[500]),
            Text('51'),
          ],
        ));

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: color,
            ),
            Container(
                margin: const EdgeInsets.only(top: 8.0),
                child: Text(
                  label,
                  style: TextStyle(
                      color: color,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400),
                )),
          ]);
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
        padding: const EdgeInsets.all(32.0),
        child: Text(
          '''
        Lake Tilicho is the highest lake of the world.
        ''',
          softWrap: true,
        ));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Top Lakes'),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'images/profile.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
