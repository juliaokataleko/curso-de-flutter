import 'package:flutter/material.dart';
import 'package:olamundo/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            // width: double.infinity,
            // height: double.infinity,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.network("https://png2.cleanpng.com/sh/39975e9f389b7b85c63b5b3d3068bc39/L0KzQYm3UsI0N5xqfZH0aYP2gLBuTgVvcaVqfJ98dHH3dcS0gB9ueKZ5feQ2c3XmhcPwlQkufJl3fdN9LXP8crb5lBFzbpJ3RdpuYXz3eH71hgR4d6NwRdVxYXnxPYboWcA3bWg7S6gEMHK7PoK9WMA0QWg6Sac6OUS0RIq3UsIzO2YziNDw/kisspng-united-states-computer-security-threat-cyberwarfar-health-network-chain-5a906e763690b8.1680397515194149022235.png")
                    ),
                    TextField(
                      onChanged: (value) {
                        email = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'E-mail', border: OutlineInputBorder()),
                    ),
                    Container(
                      height: 30,
                    ),
                    TextField(
                      onChanged: (value) {
                        password = value;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Senha', border: OutlineInputBorder()),
                    ),
                    Container(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {

                          if (email == "admin@gmail.com" && password == "123456") {
                            // Navigator.of(context).pushReplacement(MaterialPageRoute(
                            //   builder: (context) => HomePage()));

                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) => HomePage()));

                            // Navigator.of(context).pushNamed("/home");

                            Navigator.of(context).pushReplacementNamed("/home");

                          } else {
                            print("Login incorreto...");
                          }
                      },
                      child: Text("Entrar")
                    )
                  ]
                ),
            ),
          ),
        ),
      ),
    );
  }
}
