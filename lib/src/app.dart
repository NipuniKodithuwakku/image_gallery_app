import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'dart:convert';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  void fetchImage() async {
    counter++;
   var response = await get('https://jsonplaceholder.typicode.com/photos/$counter',);
   var imageModel = ImageModel.fromJson(json.decode(response.body));

  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('image gallery'),
        ),
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
