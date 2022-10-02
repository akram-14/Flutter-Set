import 'package:flutter/material.dart';
import 'package:flutter_set/HomeScreen.dart';
import 'package:flutter_set/ListViewWidget.dart';
import 'package:flutter_set/LoginScreen.dart';
import 'package:flutter_set/TabbarWidget.dart';

void main() { runApp(const MyApp());  }
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Set',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: const TabbarWidget(),
    );
  }
}


