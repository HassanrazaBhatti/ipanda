import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.cyan,
                Colors.amber
              ],
              begin:  FractionalOffset(0.0, 0.0),
              end:  FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp
            )
          ),
            ),
            title: const Text(
              "iFood",
              style: TextStyle(
                fontSize: 55,
                color: Colors.white,
                fontFamily: "Lobster",
              ),
            ),
            centerTitle: true,
            bottom: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.lock,color: Colors.white,),
                    text: "Login",
                  ),
                  Tab(
                    icon: Icon(Icons.person,color: Colors.white,),
                    text: "Register",
                  )
                ],
            indicatorColor: Colors.white38,
              indicatorWeight: 6,
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(
              gradient: const LinearGradient(
                  colors: [
                    Colors.amber,
                    Colors.cyan,
                  ])
            ),
            child: TabBarView(
              children: [
                
              ],
            ),
          ),
        ));
  }
}
