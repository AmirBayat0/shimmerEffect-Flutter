import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bindings/bindings.dart';
import './screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: MyBindings(),
      home: HomeScreen(),
    );
  }
}
