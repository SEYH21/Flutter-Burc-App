import 'package:burcapp/burc_detay.dart';
import 'package:flutter/material.dart';

import 'model/burc.dart';


class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc,super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle=Theme.of(context).textTheme;
    return Card(
      child: ListTile(
        onTap: (){
          Navigator.pushNamed(context, '/burcDetay',arguments: listelenenBurc);
        },
        leading: Image.asset("assets/images/"+listelenenBurc.BurcKucukResim,),
        title: Text(listelenenBurc.burcAdi),
        subtitle: Text(listelenenBurc.burcTarihi),
        trailing: Icon(Icons.arrow_forward_ios,color: Colors.pink,),
      ),
    ); 
  }
}