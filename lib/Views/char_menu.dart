
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Char_menu extends StatelessWidget {
  const Char_menu({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
      },
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
        }
        return null;
      },
      home: const MyHomePage(title: 'Hola'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Expanded(
          child: Align(
            alignment: FractionalOffset.center,
            child: Column(
              children: <Widget> [
                //Row de campeones
                Padding(padding: EdgeInsets.only(top: 120),
                  child: Container(
                    child: ConstrainedBox(
                      constraints: BoxConstraints.expand(height: 100,width: 100),
                      child: Text('Pantalla char_menu'),
                      ),
                    ),
                  ),
                //Row de origenes
                Column(


                ),
              ],

            ),



          ),),
      ),
    );
  }
}
