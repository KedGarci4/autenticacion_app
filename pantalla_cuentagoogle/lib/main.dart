import "package:pantalla_cuentagoogle/src/modules/principal/pages/homepage.dart";
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: PaginaCuentaGoogle(),
    );
  }
}
