import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/pages/bottom_nav_bar.dart';

void main() {
  // Ensure that the WidgetsBinding is initialized before calling the runApp method
  WidgetsFlutterBinding.ensureInitialized();
  // Set the device orientation to portrait
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
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
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor : Colors.grey[100],
        appBarTheme: AppBarTheme(
        backgroundColor: Colors.grey[100],
        ),
        listTileTheme: ListTileThemeData(
          iconColor: Colors.deepPurple,
        ),
        dividerTheme: DividerThemeData(
          thickness: 2,
            color: Colors.grey[300],
            indent: 20,
            endIndent: 20,
        ),
        fontFamily: 'OpenSans',
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
      debugShowCheckedModeBanner: false,
      home: const BottomNavBarPage(),
    );
  }
}

