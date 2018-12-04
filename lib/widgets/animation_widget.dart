import 'package:flutter/material.dart';

class FadeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fade Demo',
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
      home: MyFadeTest(
        title: 'Fade Demo',
      ),
    );
  }
}

class MyFadeTest extends StatefulWidget {
  final String title;
  MyFadeTest({Key key, this.title}) : super(key: key);

  @override
  _MyFadeTest createState() {
    return _MyFadeTest();
  }
}

class _MyFadeTest extends State<MyFadeTest> with TickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curve;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000));
    curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: FadeTransition(
            opacity: curve,
            child: FlutterLogo(
              size: 100.0,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.forward();
        },
        tooltip: 'Fade',
        child: Icon(Icons.forward),
      ),
    );
  }
}
