import 'package:flutter/material.dart';
import 'package:json_training/services/adresse_service.dart';
import 'package:json_training/services/photo_service.dart';
import 'package:json_training/services/product_service.dart';
import 'package:json_training/services/shape_service.dart';
import 'package:json_training/services/student_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    loadStudent();
    loadAdresse();
    loadShape();
    loadProduct();
    loadPhoto();
    
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(),
       
    );
  }
}
