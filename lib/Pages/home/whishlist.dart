import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../WidgetsClasses/props.dart';

class Whishlist extends StatefulWidget {
  const Whishlist({Key? key}) : super(key: key);

  @override
  State<Whishlist> createState() => _WhishlistState();
}

class _WhishlistState extends State<Whishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF1A2025),
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Ma liste de souhaits", style: TextStyle(fontFamily:'GoogleSans')),
          backgroundColor: const Color(0xFF1A2025),

        ),
        body:
        Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset('/images/empty_whishlist.svg'),
              Padding(
                padding: EdgeInsets.only(left:15, bottom: 20, right: 20, top:30), //apply padding to some sides only
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:15, bottom: 5, right: 20, top:5), //apply padding to some sides only
                      child:  Text("Vous n'avez pas encore liké de contenu",
                          style: TextStyle(color: Colors.white)),
                    ),

                    Text("Cliquez sur l'étoile' pour en ajouter",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),


            ],
          ),
        )
    );
  }
}
