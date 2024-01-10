import 'package:brand_shop/authScreens/login_tab_page.dart';
import 'package:brand_shop/authScreens/registration_tab_page.dart';
import 'package:flutter/material.dart';


class AuthScreen extends StatefulWidget
{
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
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
            ),

          title:const Text(
            "Brand Shop",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,

            ),

          ),
            centerTitle: true,
            bottom: const TabBar(
              indicatorColor: Colors.black45,
                indicatorWeight: 4,
                tabs: [

                  Tab(
                    text: "Login",
                    icon: Icon(Icons.lock,
                    color:Colors.white
                    ),
                  ),

                  Tab(
                    text: "Registration",
                    icon: Icon(Icons.person,
                        color:Colors.white
                    ),
                  ),

                ],
            ),

        ),

          body: Container(
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
            child: const TabBarView(
                children:[
                  LoginTabPage(),
                  RegistrationTabPage()

                ],
            ),
          ),
        ),

    );
  }
}
