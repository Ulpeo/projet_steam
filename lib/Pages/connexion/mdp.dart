import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../WidgetsClasses/props.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A2025),
      body:
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.fromLTRB(10,50,10,10),

          child: Column(
            children: [
              Text('Mot de passe oublié', style: TextStyle(color: Colors.white, fontSize: 40),),
              Container(
                  width: 300,
                  height: 50,
                  margin: const EdgeInsets.all(10.0),
                  child: Text("Veuillez saisir votre email afin de réinitialiser votre mot de passe", style: TextStyle(color:Colors.white), textAlign: TextAlign.center,)),
              champText('Email'),
              button("Renvoyer mon mot de passe", context, '/'),
            ],
          ),
        ),





    );
  }
}

