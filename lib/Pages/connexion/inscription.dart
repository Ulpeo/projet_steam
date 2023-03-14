import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../WidgetsClasses/props.dart';

class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return (
        Scaffold(
            backgroundColor: const Color(0xFF1A2025),
            body:

            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[

                    Text('Inscription', style: TextStyle(color: Colors.white, fontSize: 40),),
                    Container(
                        width: 200,
                        height: 45,
                        margin: const EdgeInsets.all(10.0),
                        child: Text("Veuillez saisir les différentes informations afin que vos données soient sauvegardées", style: TextStyle(color:Colors.white), textAlign: TextAlign.center,)),
                    champText("Nom d'utilisateur"),
                    champText('Email'),
                    champText('Mot de passe'),
                    champText('vérification du mot de passe'),
                    button("S'inscrire", context, '/signUp'),
                    buttonCompte(),
                    Text("Mot de passe oublié", style: TextStyle(color:const Color(0xFFAFB8BB), decoration: TextDecoration.underline), textAlign: TextAlign.center,)

                  ]
              ),
            )
        )
    );
  }
}
