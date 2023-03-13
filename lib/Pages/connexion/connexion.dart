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
    return Scaffold(
        backgroundColor: const Color(0xFF1A2025),
      body:

        Column(
          children:[

          Text('Bienvenue !', style: TextStyle(color: Colors.white, fontSize: 40),),
          Text("Veuillez vous connecter ou créer un compte pour utiliser l'application", style: TextStyle(color:Colors.white)),
            champText('Email'),
            champText('Mot de passe'),
            button('Se connecter'),
            buttonCompte(),

    ]
        )
    );
  }
}
