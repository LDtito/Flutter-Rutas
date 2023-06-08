import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.green, Colors.yellow],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    child: Scaffold(
    body: ListView(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
      children: <Widget>[
        CircleAvatar(
          radius: 100.0,
          backgroundColor: Color.fromARGB(255, 240, 7, 7),
          backgroundImage: AssetImage('images/images.jpeg'),
        ),
        Column(
          children: <Widget>[
            Text(
              'Bienvenido',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Ejercicio #2',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        SizedBox(
          width: 160.0,
          height: 15.0,
          child: Divider(
            color: Colors.blueGrey[600],
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Register');
            },
            child: Text('Registrarse'),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              minimumSize: Size(double.infinity, 50),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Login');
            },
            child: Text('Iniciar Sesión'),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              minimumSize: Size(double.infinity, 50),
            ),
          ),
        ),
      ],
    ),
  ),
);

  }
}