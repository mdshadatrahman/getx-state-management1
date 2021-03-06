import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/views/animal_homepage.dart';
import 'package:getx/views/route_management1.dart';
import 'package:getx/views/shopping_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimalHome(),
      // home: ShoppingPage(),
    );
  }
}