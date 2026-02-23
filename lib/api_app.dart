import 'package:api_app/screens/home/home.dart';
import 'package:api_app/screens/users/users.dart';
import 'package:flutter/material.dart';

class Api_App extends StatelessWidget {
  const Api_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: const Home(),
      routes: {"UserScreen": (context) => UserScreen()},
    );
  }
}
