import 'dart:async';

import 'package:brand_shop/main_screens/home_screen.dart';
import 'package:flutter/material.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
   splashScreenTimer()
   {
     Timer( const Duration(seconds: 4), ()  async
     {
       Navigator.push(context, MaterialPageRoute(builder: (c)=>HomeScreen()));
     }
     );
   }

  @override

  void initState() //called automatically when user comes here to this screen
  {
    // TODO: implement initState
    super.initState();
    splashScreenTimer();
  }
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueAccent,
              Colors.blueGrey,
            ],
            begin: FractionalOffset(0.0,0.0),
            end: FractionalOffset(1.0,0.0),
            stops: [0.0,1.0],
            tileMode: TileMode.clamp,

          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                    "images/welcome.png"
                ),
              ),


              Text(
                "Brand Shop",
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 3,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),

              ),

            ],

          ),

        ),


      ),

    );

  }

}
