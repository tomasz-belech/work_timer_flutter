import 'package:flutter/material.dart';
import 'package:work_timer/widgets.dart';

void main() => runApp(MyApp());

final double defaultPadding = 5.0;

class MyApp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Work Timer',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: TimerHomePage(),
    );
  }
}
void emptyMethod() {}

class TimerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My work timer'),
      ),
      body: Column(children: [
        Row(
          children: [
            Padding(padding: EdgeInsets.all(defaultPadding),),
            Expanded(child: ProductivityButton(color: Color(0xff009688),
              text: 'Work', onPressed: emptyMethod, size: null,)),
            Padding(padding: EdgeInsets.all(defaultPadding),),
            Expanded(child: ProductivityButton(color: Color(0xff607d8b),
              text: 'Short Break', onPressed: emptyMethod, size: null,)), 
            Padding(padding: EdgeInsets.all(defaultPadding),),
            Expanded(child: ProductivityButton(color: Color(0xff455a64), text: 'Long Break', size: null, onPressed: emptyMethod),),
           Padding(padding: EdgeInsets.all(defaultPadding),),
          ],
        ),
        Row(
          children:[
            Expanded(child: Text("Hello")),
          ],
        ),
        Row(children: [
          Padding(padding: EdgeInsets.all(defaultPadding),),
          Expanded(child: ProductivityButton(color: Color(0xff212121), text: 'Stop', size: null, onPressed: emptyMethod),),
          Padding(padding: EdgeInsets.all(defaultPadding),),
          Expanded(child: ProductivityButton(color: Color(0xff009688), text: 'Restart', size: null, onPressed: emptyMethod),),
          Padding(padding: EdgeInsets.all(defaultPadding),),
        ],),
      ],),
    );
  }
}
