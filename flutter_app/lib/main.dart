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
          title: Text('Hello World'),
      ),
      body:

      Image.network('http://bit.ly/2Pvz4t8')

    );

  }

}

