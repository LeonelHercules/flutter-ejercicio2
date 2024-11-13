import 'package:ejemplo2/src/pages/contador.dart';
import 'package:ejemplo2/src/pages/controles.dart';
import 'package:ejemplo2/src/pages/home_page.dart';
import 'package:ejemplo2/src/pages/radios.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo',
      //home: HomePage(),
      home: radios(),
    );
  }
}
