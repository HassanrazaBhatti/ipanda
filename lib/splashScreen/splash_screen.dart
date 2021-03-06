import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ipanda/auth/auth_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  setTimer(){
    Timer(const Duration(seconds: 8), () async{
      Navigator.push(context, MaterialPageRoute(builder: (c)=> const AuthScreen()));
    });
  }
  @override
  void initState() {
    super.initState();
    setTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/splash.jpg"),
        const    SizedBox(height: 10,),
            const    Padding(padding: const EdgeInsets.all(18),
            child: Text(

              "Sell Food Online",
              textAlign: TextAlign.center,
              style: TextStyle(
               color: Colors.black54,
                fontSize: 40,
                fontFamily: "Signatra",
                letterSpacing: 3,
            ),),
            ),
          ],
        ),
      ),
    );
  }
}
