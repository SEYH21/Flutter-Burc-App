import 'package:burcapp/route_generator.dart';
import 'package:flutter/material.dart';

import 'burc_listesi.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(primarySwatch: Colors.pink),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}