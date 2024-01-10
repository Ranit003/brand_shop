import 'package:brand_shop/authScreens/auth_screen.dart';
import 'package:brand_shop/main_screens/home_screen.dart';
import 'package:brand_shop/splashscreen/my_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
//void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Users',
      theme: ThemeData(

        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        // useMaterial3: true,
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home:AuthScreen(),
    );
  }
}
