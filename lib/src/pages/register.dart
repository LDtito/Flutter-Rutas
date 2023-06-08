import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late String _nombre;
  late String _email;
  late String _password;
  String _selectedGender = '';

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
            Column(
              children: <Widget>[
                Text(
                  'Primer texto',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Segundo texto',
                  style: TextStyle(fontSize: 20),
                ),
              ],
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
                hintText:'Name',
                labelText:'name',
                suffixIcon: Icon(Icons.verified_user),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                )
              ),
            ),
            Divider(
              height:20.0,
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
                suffixIcon: Icon(Icons.verified_user_rounded),
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
            height: 20.0,
          ),
          TextField(
            enableInteractiveSelection: false,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              suffixIcon: Icon(Icons.lock_outline),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Género:',
            style: TextStyle(fontSize: 16.0),
          ),
          RadioListTile(
            title: Text('Masculino'),
            value: 'Masculino',
            groupValue: _selectedGender,
            onChanged: (value) {
              setState(() {
                _selectedGender = value.toString();
              });
            },
          ),
          RadioListTile(
            title: Text('Femenino'),
            value: 'Femenino',
            groupValue: _selectedGender,
            onChanged: (value) {
              setState(() {
                _selectedGender = value.toString();
              });
            },
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
                  Navigator.pushNamed(context, '/Login');
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