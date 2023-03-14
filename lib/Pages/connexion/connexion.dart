import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../WidgetsClasses/props.dart';

class Connexion extends StatefulWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
          backgroundColor: const Color(0xFF1A2025),
        body:

          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(10.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              children:[

              Text('Bienvenue !', style: TextStyle(color: Colors.white, fontSize: 40),),
              Container(
                  width: 200,
                  height: 45,
                  margin: const EdgeInsets.all(10.0),
                  child: Text("Veuillez vous connecter ou créer un compte pour utiliser l'application", style: TextStyle(color:Colors.white), textAlign: TextAlign.center,)),
                champText('Email'),
                champText('Mot de passe'),
                button('Se connecter', context, '/signUp'),
                buttonCompte(),
                Text("Mot de passe oublié", style: TextStyle(color:const Color(0xFFAFB8BB), decoration: TextDecoration.underline), textAlign: TextAlign.center,)

      ]
            ),
          )
      );

  }
}
