import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../WidgetsClasses/props.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A2025),
      appBar: AppBar(
    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
        title: Text("Accueil", style: TextStyle(fontFamily:'GoogleSans')),
          backgroundColor: const Color(0xFF1A2025),
        actions: [
          IconButton(onPressed:(){
            Navigator.pushNamed(context, '/liked');
          } , icon: SvgPicture.asset("assets/images/like.svg")),
          IconButton(onPressed:(){
            Navigator.pushNamed(context, '/whishlist');
          }, icon: SvgPicture.asset("assets/images/whishlist.svg")),
        ],
      ),

      body: SingleChildScrollView( //listView.builder
        child: Column(
          children: [
              searchbar(),
              SvgPicture.asset('assets/images/Bitmap.svg'),
              Text('Titan Fall 2 ultimated edition', style: TextStyle(color: Colors.white),),
              game(), //listview + card + stack pour limage en background



          ],

        )
      )

    );
  }
}



/*
 Scaffold(



      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

            SvgPicture.asset('assets/images/Bitmap.svg'),
          ],

        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
 */