import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch : Colors.blue,
      ),
      home: MyHomePage(),
    );
      }
  }

 class MyHomePage extends StatefulWidget {
   @override
   _MyHomePageState createState() => _MyHomePageState();
 }

  class _MyHomePageState extends State<MyHomePage> {
   var _index = 0;
   var _pages = [
     Page1(),
     Page2(),
     Page3(),
   ]
   @override
   Widget build(BuildContext conext){
     return Scaffold(
       appBar: AppBar(
         backgroundColor : Colors.white,
         title:Text('복잡한 UI',
         style:TextStyle(color:Colors.black),
         ),
         actions:<Widget>[
           IconButton(
             icon: Icon(
               Icons.add,
               color: Colors.black,
             ),
             onPressed:(){},
           ),
         ],
         centerTitle:true,
       ),
       body: _pages[_index],

       bottomNavigationBar : BottomNavigationBar(
         onTap : (index) {
           setState(() {
             _index = index;
           });
         },
         currentIndex: _index,
         items: <BottomNavigationBarItem>[
           BottomNavigationBarItem(
             title:Text('홈'),
             icon:Icon(Icons.home),
           ),
           BottomNavigationBarItem(
             title: Text('이용서비스'),
             icon : Icon(Icons.assignment),
           ),
           BottomNavigationBarItem(
             title:Text('내정보'),
             icon : Icon(Icons.account_circle),
           ),
         ],
       ),
     );
   }

  }


class Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text(
        '홈페이지',
        style : TextStyle(fontSize :40),
      ),
    );
  }
}

class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text(
        '이용서비스',
        style : TextStyle(fontSize :40),
      ),
    );
  }
}

class Page3 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text(
        '내 정보',
        style : TextStyle(fontSize :40),
      ),
    );
  }
}