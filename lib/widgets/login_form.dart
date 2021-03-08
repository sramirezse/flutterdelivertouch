import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(255, 146, 43, 1)),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        margin: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            _crearEmail(),
            TextFormField(
              style: TextStyle(color: Colors.white70),
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                labelStyle: TextStyle(color: Colors.white, fontSize: 18),
                labelText: 'Contraseña',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FlatButton(
              onPressed: () {},
              minWidth: 200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Colors.white),
              ),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearEmail(){
    return TextFormField(
              style: TextStyle(color: Colors.white70),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.mail_outline,
                  color: Colors.white,
                ),
                hintText: 'Escribe tu correo para continuar',
                hintStyle: TextStyle(color: Colors.white60),
                labelStyle: TextStyle(color: Colors.white, fontSize: 18),
                labelText: 'Dirección de correo',
                fillColor: Colors.white,
              ),
            ),
  }
}
