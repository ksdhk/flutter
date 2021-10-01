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
        home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title:Text('first'),
    ),
    body: RaisedButton(
      child:Text('다음페이지로'),
      onPressed:(){},
    ),
  );
  }

}

class SecondPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Second'),
      ),
      body: RaisedButton(
        child:Text('이전 페이지로'),
        onPressed:(){},
      ),
    );
  }

}
