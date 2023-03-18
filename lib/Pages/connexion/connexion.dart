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
            margin: const EdgeInsets.fromLTRB(10,50,10,10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              children:[

              Text('Bienvenue !', style: TextStyle(color: Colors.white, fontSize: 40),),
              Container(
                  width: 200,
                  height: 50,
                  margin: const EdgeInsets.all(10),
                  child:
                  Text("Veuillez vous connecter ou créer un compte pour utiliser l'application", style: TextStyle(color:Colors.white), textAlign: TextAlign.center,)),
                champText('Email'),
                champText('Mot de passe'),
                button('Se connecter', context, '/'),
                buttonCompte(context),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/password');

                    },
                    child: Text("Mot de passe oublié", style: TextStyle(color:const Color(0xFFAFB8BB), decoration: TextDecoration.underline), textAlign: TextAlign.center,))

      ]
            ),
          )
      );

  }
}
