import 'package:flutter/material.dart';

class LocationFinder extends StatefulWidget {
  const LocationFinder({super.key});

  @override
  State<LocationFinder> createState() => _LocationFinderState();
}

class _LocationFinderState extends State<LocationFinder> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.red,
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        child: Image.network("https://png2.cleanpng.com/sh/39975e9f389b7b85c63b5b3d3068bc39/L0KzQYm3UsI0N5xqfZH0aYP2gLBuTgVvcaVqfJ98dHH3dcS0gB9ueKZ5feQ2c3XmhcPwlQkufJl3fdN9LXP8crb5lBFzbpJ3RdpuYXz3eH71hgR4d6NwRdVxYXnxPYboWcA3bWg7S6gEMHK7PoK9WMA0QWg6Sac6OUS0RIq3UsIzO2YziNDw/kisspng-united-states-computer-security-threat-cyberwarfar-health-network-chain-5a906e763690b8.1680397515194149022235.png")
                      ),
                      Container(height: 22.0,),
                      Text("Change Location", style: TextStyle(fontSize: 30.0, color: Colors.white),),
                      Container(height: 15.0,),
                      Text("Plugin app for tinder", style: TextStyle(fontSize: 20.0, color: Colors.white),),
                      Container(height: 15.0,),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(320),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white, 
                              foregroundColor: Colors.red
                            ),
                            onPressed: () {}, 
                            child: Text("Login with facebook")
                          ),
                        ),
                      )
                    ]
                  ),
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}