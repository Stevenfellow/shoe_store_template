// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:shoe_store/products.dart';
import 'BottomNavigation.dart';
import 'ItemsList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Explore',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Product(),
    );
  }
}
