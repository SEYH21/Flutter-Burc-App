import 'package:flutter/material.dart';

import 'model/burc.dart';


class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(secilenBurc.burcAdi+" Burcu ve Ozellikleri"),
              background: Image.asset("assets/images/"+secilenBurc.burcBuyukResim,fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(secilenBurc.burcDetayi,style: TextStyle(fontSize: 23),),
              ),
            ),
          )
        ],
      )
      
       );
  }
}