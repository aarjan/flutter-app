/**
 * Here we create two stateless widgets, 
 * cleanly separating the concerns of displaying the counter (CounterDisplay) and changing the counter (CounterIncrementor). 
 * This separation of responsibility allows greater complexity to be encapsultated in the individual widgets,
 * while maintaining simplicity in the parent.
 */

import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
 CounterDisplay({this.count});
 final int count;

 @override 
 Widget build(BuildContext context) {
   return Text('Count: $count');
   }   

}

class CounterIncrementor extends StatelessWidget{

  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
    Widget build(BuildContext context) {
      return RaisedButton(onPressed: onPressed,
      child: Text('increment'));      
    }
}


class Counter extends StatefulWidget{
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter>{
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      CounterIncrementor(onPressed: _increment),
      CounterDisplay(count: _counter),
    ]);

    }
}