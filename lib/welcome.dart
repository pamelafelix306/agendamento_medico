import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 100

        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Bem vindo ao Agendamento Medico',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:Colors.blueAccent,
                fontSize: 30
              ),
            ),
            SizedBox(
              height: 80,
            ),

            Image.network(
                "https://media.istockphoto.com/id/1248228302/vector/senior-man-in-consultation-with-doctor-nurce-health-monitoring-in-old-age-verification-and.jpg?s=612x612&w=0&k=20&c=Vw1hnmzBdkeoMaqADqCcGlkCFtarvkAFGNHnh77YgUI="
            ),
             SizedBox(height: 50),

            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Cadastro',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),

                ),
                SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage(title: "login")),
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                    ),),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple)
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );

  }
}