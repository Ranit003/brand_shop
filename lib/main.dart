import 'package:brand_shop/main_screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
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
      home:HomeScreen(),
    );
  }
}
