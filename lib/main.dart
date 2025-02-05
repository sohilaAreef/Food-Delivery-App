import 'package:flutter/material.dart';
import 'package:food_delivery/pages/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodak - Food Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
      debugShowCheckedModeBanner: false,
      home: const BottomNavBarPage(),
    );
  }
}

