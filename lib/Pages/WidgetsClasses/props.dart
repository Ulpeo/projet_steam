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
  Center(

    child: (
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
    ),
  )

  );
}

Widget button(String mot, BuildContext context, String page){
  return(
  Container(
    width: 400,
    height: 45,
    margin: const EdgeInsets.fromLTRB(10,60,10,10),
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xFF636AF6),

      ),
      onPressed: () {
        Navigator.pushNamed(context, page);

      },
      child: Text(
        mot,
        style: TextStyle(
          color: Color(0xffffffff),
        ),
      ),
    ),
  )
  );
}




Widget buttonCompte(BuildContext context){
  return(
      Container(
        width: 400,
        height: 45,
        margin: const EdgeInsets.all(10.0),
        decoration: ShapeDecoration(
            color: const Color(0xFF636AF6),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
                side: BorderSide(
                    width: 2,
                    color:const Color(0xFF636AF6)
                )
            )
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xFF1A2025),

          ),

            onPressed: () {
              Navigator.pushNamed(context, '/signUp');

            },
          child: Text(
            "Créer un nouveau compte",
            style: TextStyle(
              color: Color(0xffffffff),
            ),
          ),
        ),
      )
  );
}

Widget champText(String mot){
  return(

  Container(
    width: 400,
    height: 45,
    margin: const EdgeInsets.all(10.0),
    child: (
        TextField(
          //obscureText: true,

          decoration: InputDecoration(
            label: Center(
              child: Text(mot, style: TextStyle(color: Colors.white), ),
            ),
            filled: true,
            fillColor: const Color(0xFF1E262C),
          ),
        )
    ),
  )
  );
}