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
  var _isChecked = false;
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar : AppBar(
          title: Text('Hello World'),
      ),
      body:

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          GestureDetector(
            onTap:(){
              print("GestureDetector 클릭!!");
            },
            child : Text('클릭 me!!'),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap:(){
              print('InkWell 클릭!!');
            },
            child:Text('클릭 Me!!'),
          )
        ]
      ) ,




    );

  }

}

