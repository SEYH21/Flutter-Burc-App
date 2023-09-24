import 'package:burcapp/burc_detay.dart';
import 'package:burcapp/burc_listesi.dart';
import 'package:burcapp/model/burc.dart';
import 'package:flutter/material.dart';

class RouteGenerator{
  static Route<dynamic>? routeGenerator(RouteSettings settings){

    switch(settings.name){
      case "/":
      return MaterialPageRoute(builder: (context)=>BurcListesi());
      case '/burcDetay':
      final Burc secilen=settings.arguments as Burc;
      return MaterialPageRoute(builder: (context)=>BurcDetay(secilenBurc: secilen));
    }


  }
}