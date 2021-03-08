import 'package:flutter/material.dart';
import 'package:delivery/widgets/circle.dart';
import 'package:delivery/widgets/icon_container.dart';
import 'package:delivery/widgets/login_form.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: -(size.width * 0.7) * .04,
              top: -(size.width * 0.7) * 0.5,
              child: Circle(
                size: size.width * 0.7,
                colors: [Colors.white, Color.fromARGB(11, 24, 2, 9)],
              ),
            ),
            Positioned(
              right: -(size.width * 0.7) * 0.4,
              top: -(size.width * 0.7) * 0.3,
              child: Circle(
                size: size.width * 0.83,
                colors: [Colors.white, Color.fromRGBO(199, 86, 0, 78)],
              ),
            ),
            Positioned(
              child: IconContainer(
                size: 500,
              ),
            ),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
