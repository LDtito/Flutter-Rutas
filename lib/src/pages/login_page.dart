import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  late String _nombre;
  late String _email;
  late String _password;

  get flatButtonStyle => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 90.0
        ),
        children: <Widget> [
            CircleAvatar(
              radius: 100.0,
              backgroundColor: Color.fromARGB(255, 240, 7, 7),
              backgroundImage: AssetImage('images/images.jpeg'),
            ),
            Text(
              'Login',
              style: TextStyle(
                fontFamily: 'cursiva', fontSize: 30.0
                ),
            ),
            Text(
              'Ejemplo #2',
              style: TextStyle(
                fontFamily: 'cursiva', fontSize: 30.0
                ),
            ),
            SizedBox(
              width:160.0,
              height: 15.0,
              child: Divider(
                color: Colors.blueGrey[600],
              )
            ),
            TextField(
              enableInteractiveSelection: false,
              decoration: InputDecoration (
                hintText:'USER-NAME',
                labelText:'user-name',
                suffixIcon: Icon(Icons.verified_user),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                )
              ),
                onSubmitted:(valor){
                  _nombre = valor;
                  print('El correo es: $_nombre');
                }
            ),
            Divider(
              height:20.0,
            ),
            TextField(
              decoration: InputDecoration (
                hintText:'Email',
                labelText:'Email',
                suffixIcon: Icon(Icons.alternate_email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                )
              ),
                onSubmitted:(valor){
                  _email = valor;
                  print('El correo es: $_email');
                }
            ),
            Divider(
              height:20.0
            ),
            TextField(
              enableInteractiveSelection: false,
              obscureText: true,
              decoration: InputDecoration (
                hintText:'Password',
                labelText:'Password',
                suffixIcon: Icon(Icons.lock_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
                )
              )
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Menu');
                },
                child: Text('Siguiente'),
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
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Regresar'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ),
        ],
      ),
    );
  }
}