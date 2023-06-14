import 'package:flutter/material.dart';
import 'package:olamundo/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(children: [
            
            UserAccountsDrawerHeader(
              // currentAccountPicture: ClipRRect(
              //   borderRadius: BorderRadius.circular(40),
              //   child: Image.network("https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png")
              // ),
              currentAccountPicture: ClipOval(
                child: Image.network("https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png")
              ),
              accountName: Text("JFK"), 
              accountEmail: Text("juliofeli78@gmail.com")
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              subtitle: Text("Menu inicial"),
              onTap: () {
                print("Home");
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              subtitle: Text("Terminar sessao"),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("/");
              },
            )
          ]),
        ),
        appBar: AppBar(
          title: Text("Tutorial de Flutter"),
          actions: [CustomSwitch()],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Text("Contador $counter"),
          //     CustomSwitch()
          //   ],
          // ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // scrollDirection: Axis.horizontal,
            children: [
              Text(
                "Contador: $counter",
                style: TextStyle(fontSize: 30.0),
              ),
              Container(height: 50),
              CustomSwitch(),
              Container(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.blue)
                ],
              )
            ],
          ),
        ),

        // Container(
        //   height: 200,
        //   width: 200,
        //   color: Colors.black,
        //   // child: Align(
        //   //   alignment: Alignment.center,
        //   //   child: Container(width: 100, height: 100, color: Colors.green,),
        //   // ),
        //   child: Center(
        //     child: Container(width: 100, height: 100, color: Colors.green,),
        //   ),
        // ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                counter++;
              });
            }));
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        // setState(() {
        //   AppController.instance.isDarkTheme = value;
        // });
        AppController.instance.changeTheme();
      },
    );
  }
}
