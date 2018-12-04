import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful Text Widget',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: TextAppPage(),
    );
  }
}

class TextAppPage extends StatefulWidget {
  TextAppPage({Key key}) : super(key: key);

  @override
  _TextAppPageState createState() => _TextAppPageState();
}

class _TextAppPageState extends State<TextAppPage> {
  String textToShow = "Hello App";
  bool toggle = true;

  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  _getToggleChild() {
    return toggle
        ? Text('Hello App')
        : MaterialButton(
            onPressed: () {},
            color: Colors.blue,
            child: Text('Nice to meet you!'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text App'),
      ),
      body: Center(
        child: _getToggleChild(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: 'Update Text',
        child: Icon(Icons.update),
      ),
    );
  }
}
