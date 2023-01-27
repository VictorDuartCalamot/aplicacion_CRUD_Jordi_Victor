import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'char_menu.dart';
import 'origin_menu.dart';

class Main_menu extends StatelessWidget {
  const Main_menu({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/char_menu': (context) => const Char_menu(),
        '/origin_menu': (context) => const Origin_menu(),
      },
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
        }
        return null;
      },
      home: const MyHomePage(title: ''),
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/bcksplash.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Expanded(
            child: Align(
                alignment: FractionalOffset.center,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 250),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      //Row de campeones
                      Padding(
                          padding: EdgeInsets.only(bottom: 50),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Container(
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 300,
                                  maxWidth: 350,
                                ),
                                child: InkWell(
                                  splashColor: Colors.black26,
                                  onTap: () {
                                    Navigator.pushNamed(context, '/char_menu');
                                  },
                                  child:
                                  Stack(
                                    children: [


                                      Image(
                                        image:
                                            AssetImage('lib/images/tefete.jpg'),
                                      ),
                                      Text("HOla",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 40,
                                        ),


                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )),
                      //Row de origenes
                      Column(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(top: 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: Container(
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxHeight: 300,
                                      maxWidth: 360,
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.black26,
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/origin_menu');
                                      },
                                      child: Image(
                                        image: AssetImage(
                                            'lib/images/tftmap.webp'),
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
