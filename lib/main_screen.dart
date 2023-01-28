import 'dart:ui';

import 'package:crud_framework/Views/Main_menu.dart';
import 'package:crud_framework/widgets_lib/app_base.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/Main_menu': (context) => const Main_menu(),
      },
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
        }
        return null;
      },
      home: const MyHomePage(title: 'Main Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 785),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/main_screen/tft_main_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 375),
                      child: Stack(children: [
                        Opacity(
                          opacity: 1,
                          child: Image(
                            image: AssetImage('lib/images/main_screen/tefete_title.png'),
                            color: Colors.black,
                          ),
                        ),
                        ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaY: 4, sigmaX: 2),
                            child: Image(
                              image: AssetImage('lib/images/main_screen/tefete_title.png'),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    FadeTransition(
                      opacity: _animation,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.orangeAccent,
                          textStyle: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/Main_menu');
                        },
                        child: Text(
                          '¡Pulsa para iniciar!',
                          style: TextStyle(shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.black,
                              offset: Offset(2.0, 2.0),
                            )
                          ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 110),
                      child: Text(
                        'FlutterGames - 2023 @TM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
