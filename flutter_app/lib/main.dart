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

class Person{
  String name;
  int age;

  Person(this.name,this.age);
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
      onPressed:(){
        final person = Person('홍길동',20);
        Navigator.push(
          context,
          MaterialPageRoute(builder:(context)=> SecondPage(person:person)),
        );

      },
    ),
  );
  }

}

class SecondPage extends StatelessWidget{
  final Person person;

  SecondPage({@required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Second'),
      ),
      body: RaisedButton(
        child:Text('이전 페이지로'),
        onPressed:(){
          Navigator.pop(context);
        },
      ),
    );
  }

}
