import 'package:flutter/material.dart';
import 'package:prefab_app/screens/home_screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColorDark: Color(0xFF0D3A35),
        primaryColor: Color(0xFF13544C),
        primaryColorLight: Color(0xFFB8CBC9),
        accentColor: Color(0xFFEFE8D8),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      routes: {HomeScreen.routeName: (context) => HomeScreen()},
    );
  }
}
