import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
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
  runApp(app);
  
}
