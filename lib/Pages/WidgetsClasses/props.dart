import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//-----------------------classes----------------------------------------------

class AppColor {
    final black = Color(0xFF1A2025);
    final light_black = Color(0xFF1E262C);
}



//----------------------- Widgets---------------------------------------------

Widget searchbar(){
  return(
      TextField(
        //obscureText: true,
        style: TextStyle(color: Colors.white,),
        decoration: InputDecoration(
          labelText: 'Rechercher un jeu...',
          labelStyle: TextStyle(color: Colors.white,),
          suffixIcon: Icon(Icons.search, color:const Color(0xFF636AF6)),
          filled: true,
          fillColor: const Color(0xFF1E262C),
        ),
      )
  );
}

Widget game(){
  return(
  Row(
    children: [
      SvgPicture.asset('assets/images/empty_likes.svg'),
      Column(
        children: [
          Text('Titre jeu', style: TextStyle(color: Colors.white),),
          Text('nom editeur', style: TextStyle(color: Colors.white),),
          Text('prix: 10€', style: TextStyle(color: Colors.white),),
        ],
      ),
      Container(
        color: const Color(0xFF636AF6) ,
        child:
          Text('En savoir plus', style: TextStyle(color: Colors.white),),
      )
    ],

  )
  );
}