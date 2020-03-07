import 'package:flutter/material.dart';

class App extends StatelessWidget{
  Widget build(context){
    return MaterialApp(
    home: Scaffold(
      appBar : AppBar(
        title:Text('image gallery'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('Hi there!');
        },
        child:Icon (Icons.add),

        ),
    ),

  );
  }
}