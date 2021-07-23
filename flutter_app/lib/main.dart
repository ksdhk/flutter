import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
        home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatelessWidget{
  var _text = "Hello";

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar : AppBar(
          title:Text('Hello World'),
      ),
      body:
          Stack(
      children:<Widget>[
      Container(
        color: Colors.red,
        width:100,
        height:100,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(8.0),
      ),
        Container(
          color: Colors.green,
          width:80,
          height:80,
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
        ),
        Container(
          color: Colors.blue,
          width:60,
          height:60,
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
        ),
    ],
          )
    );

  }

}

