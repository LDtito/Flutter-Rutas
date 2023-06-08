import 'package:flutter/material.dart';
import 'package:flutterRutas/src/pages/404_page.dart';
import 'package:flutterRutas/src/pages/inicio_page.dart';
import 'package:flutterRutas/src/pages/login_page.dart';
import 'package:flutterRutas/src/pages/menu_page.dart';
import 'package:flutterRutas/src/pages/register.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _routes = {
    '/': (context)=> InicioPage(),
    '/Register': (context)=> RegisterPage(),
    '/Login': (context)=> login(),
    '/Menu':(context)=> MenuPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: _routes,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => OtraPage(),);
      },
     // home: HomePage(),
    );
  }
}