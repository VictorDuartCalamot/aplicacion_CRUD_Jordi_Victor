//import 'dart:html';
import 'package:crud_framework/CRUD_base/CRUD_list_base.dart';
import 'package:crud_framework/CRUD_base/CRUD_view_base.dart';
import 'package:crud_framework/Models/champion_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../CRUD_base/CRUD_model_base.dart';
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
        '/char_menu': (context) => CRUDListBase<Champion>(
            itemBuilder: Cards, addItemRoute: '', viewItemRoute: '/test_view'),
        '/origin_menu': (context) => CRUDListBase<Origen>(
            itemBuilder: Cards, addItemRoute: '', viewItemRoute: '/test_view'),
      },
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
          // case '/test_view':{
          //   return MaterialPageRoute(builder: context)=>CRUDViewBase<Champion>(item: routeSettings.arguments as Champion,detailedView: ,editFormView: ,);
          // }
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
            image: AssetImage('lib/images/background_imgs/bcksplash.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Expanded(
            child: Align(
                alignment: FractionalOffset.center,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 190),
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
                                  child: Stack(
                                    children: <Widget>[
                                      Image(
                                          image: AssetImage(
                                              'lib/images/main_menu/tefete.jpg')),
                                      Positioned.fill(
                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Campeones",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                shadows: [
                                                  Shadow(
                                                    blurRadius: 10.0,
                                                    color: Colors.black,
                                                    offset: Offset(2.0, 2.0),
                                                  )
                                                ],
                                                color: Colors.white,
                                                fontSize: 40,
                                              ),
                                            )),
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
                                      child: Stack(
                                        children: <Widget>[
                                          Image(
                                            image: AssetImage(
                                                'lib/images/main_menu/tftmap.webp'),
                                          ),
                                          Positioned.fill(
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Orígenes",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    shadows: [
                                                      Shadow(
                                                        blurRadius: 10.0,
                                                        color: Colors.black,
                                                        offset:
                                                            Offset(2.0, 2.0),
                                                      )
                                                    ],
                                                    color: Colors.white,
                                                    fontSize: 40,
                                                  ),
                                                )),
                                          ),
                                        ],
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

Widget Cards(item) {
  if (item is Origen) {
    return Card(
      child: Row(
        children: [
          Text(item.nombre),
          Text(item.descripcion),
        ],
      ),
    );
  } else if (item is Champion) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(item.nombre),
          Text(item.origen.nombre),
          Text("Vida: ${(item.vida).toString()}"),
          Text((item.ataque).toString()),
          Text((item.magia).toString()),
        ],
      ),
    );
  } else {
    return Card(
      child: Text('ERROR'),
    );
  }
  ;
}
